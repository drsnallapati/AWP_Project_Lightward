import pygame

from player import Player
from constants import *
from block import Block

from npc import NPC


class Level:
    def __init__(self, screen):
        self.screen = screen
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.next_scene = None
        self.game_surf = pygame.Surface(
            (self.screen_width - X_BORDER * 2, self.screen_height - Y_BORDER * 2)
        )
        self.blocks = pygame.sprite.Group()
        self.npcs = pygame.sprite.Group()
        self.impassables = pygame.sprite.Group()
        self.player = Player(self.screen, self.impassables)
        for ycoord, row in enumerate(self.get_level_design().splitlines()):
            for xcoord, cell in enumerate(row):
                if cell == "X":
                    block = Block(
                        X_BORDER + xcoord * 32,
                        Y_BORDER + ycoord * 32,
                    )
                    self.blocks.add(block)
                    self.impassables.add(block)
                if cell == "N":
                    npc = NPC(
                        X_BORDER + xcoord * 32,
                        Y_BORDER + ycoord * 32,
                        self.screen,
                        self.player
                    )
                    self.npcs.add(npc)
                    self.impassables.add(npc)
                if cell == "P":
                    self.player.rect.topleft = [X_BORDER + xcoord * 32, Y_BORDER + ycoord * 32]
                if cell == "E":
                    self.exit()


    def draw(self, surf):

        surf.fill(pygame.Color("white"))
        self.game_surf.fill((0, 0, 0))
        surf.blit(self.game_surf, (X_BORDER, Y_BORDER))
        surf.blit(self.player.surf, self.player.rect)
        for entity in self.blocks:
            surf.blit(entity.surf, entity.rect)
        for entity in self.npcs:
            surf.blit(entity.surf, entity.rect)


    def handle_input(self, pressed_keys):
        pressed_keys = pygame.key.get_pressed()
        self.player.update(pressed_keys)

    def update(self):
        for entity in self.npcs:
            entity.update()

    def get_level_design(self):
        pass

    def exit(self):
        pass
        #should not be impassable, should take you to level 2, can be just an image of light, should show up above clip and be there the whole game
