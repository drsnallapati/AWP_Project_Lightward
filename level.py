import pygame
from pytmx import load_pygame

from player import Player
from constants import *
from block import Block

from npc import NPC


class Level:
    def __init__(self, screen, retry):
        # -- Defining Screen
        self.screen = screen
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.next_scene = None

        # -- Defining the Game surface
        self.game_surf = pygame.Surface(
            (self.screen_width - X_BORDER * 2, self.screen_height - Y_BORDER)
        )

        # -- Define retry
        self.retry = retry

        # -- Defining blocks, NPCs and impassable sprite groups
        self.blocks = pygame.sprite.Group()
        self.npcs = pygame.sprite.Group()
        self.impassables = pygame.sprite.Group()
        self.player = Player(self.screen, self.impassables, self.blocks)
        self.background, self.background_rect = self.get_background()

        # -- Looping through the level design file and creating the map
        dialog_string_1, dialog_string_2 = self.get_dialog_strings()
        for ycoord, row in enumerate(self.get_level_design().splitlines()):
            for xcoord, cell in enumerate(row):
                if cell == "P":
                    self.player.rect.topleft = [X_BORDER + xcoord * 32, Y_BORDER + ycoord * 32]
        # Getting / Importing the map
        tmxdata = load_pygame(self.get_level_tmx())
        for layer in tmxdata.visible_layers:
            for item in layer:
                if layer.name == "Blocks":
                    x, y, gid = item
                    tile = tmxdata.get_tile_image_by_gid(gid)
                    if tile:
                        block = Block(
                            X_BORDER + x*tmxdata.tilewidth,
                            Y_BORDER + y*tmxdata.tileheight,
                            tile)
                        self.blocks.add(block)
                        self.impassables.add(block)
                if layer.name == "NPCs":
                    npc = NPC(
                        X_BORDER + item.x,
                        Y_BORDER + item.y,
                        self.screen,
                        self.player,
                        dialog_string_1,
                        dialog_string_2,
                        self.get_current_level(),
                        self.blocks
                    )
                    self.npcs.add(npc)
                    self.impassables.add(npc)
                if layer.name == "Player":
                    if not self.retry:
                        self.player.rect.topleft = [X_BORDER + item.x, Y_BORDER + item.y]
                if layer.name == "PlayerRetry":
                    if self.retry:
                        self.player.rect.topleft = [X_BORDER + item.x, Y_BORDER + item.y]
                if layer.name == "BossBlock":
                    self.boss_block_rect = pygame.Rect(
                        X_BORDER + item.x,
                        Y_BORDER + item.y,
                        item.width,
                        item.height
                    )

    def draw(self, surf=None):
        if not surf:
            surf = self.screen
        surf.blit(self.game_surf, (X_BORDER, Y_BORDER))

        surf.blit(self.background,self.background_rect)
        # draw the player
        self.player.draw(surf)
        for entity in self.blocks:
            surf.blit(entity.surf, entity.rect)
        for entity in self.npcs:
            surf.blit(entity.surf, entity.rect)
            # draws the actual bullets
            for bullet in entity.bullets:
                bullet.draw(surf)


    def handle_input(self, pressed_keys):
        pressed_keys = pygame.key.get_pressed()
        self.player.update(pressed_keys)

    def update(self):
        for entity in self.npcs:
            entity.update()
        for npc in self.npcs:
            bullet_collided = pygame.sprite.spritecollideany(self.player, npc.bullets)
            if bullet_collided:
                self.player.health -= 1
                bullet_collided.kill()
                if self.player.health < 1:
                    import game_over
                    self.next_scene = game_over.GameOver(self.screen, "We all stumble at some point. Want to try again or take a break?",self.get_current_level())

            player_bullet_collided = pygame.sprite.spritecollideany(npc, self.player.player_bullets)
            if player_bullet_collided:
                npc.hurt()
                player_bullet_collided.kill()
                if npc.health < 1:
                    npc.kill()
        if len(self.npcs):
            if self.boss_block_rect.colliderect(self.player.rect):
                if self.boss_block_rect.centerx < self.player.rect.left:
                    self.player.rect.left = self.boss_block_rect.right
                else:
                    self.player.rect.right = self.boss_block_rect.left


    def get_level_design(self):
        pass

    def get_background(self):
        pass

    def get_level_tmx(self):
        pass

    def get_dialog_strings(self):
        pass

    def get_current_level(self):
        pass

    def get_music_file(self):
        return "Levels.wav"

    def draw_after_clipping(self):
        self.player.draw_health()
