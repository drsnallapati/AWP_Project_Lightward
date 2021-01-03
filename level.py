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
        for ycoord, row in enumerate(self.level_design.splitlines()):
            for xcoord, cell in enumerate(row):
                if cell == "X":
                    block = Block(
                        X_BORDER + xcoord * 32,
                        Y_BORDER + ycoord * 32,
                    )
                    self.blocks.add(block)
                # if cell == "N":
                #     npc = NPC(
                #         X_BORDER + xcoord * 32,
                #         Y_BORDER + ycoord * 32,
                #     )
                #     self.npcs.add(npc)
        self.player = Player(self.screen, self.blocks)

    def draw(self):
        self.screen.fill(pygame.Color("white"))
        self.game_surf.fill((0, 0, 0))
        self.screen.blit(self.game_surf, (X_BORDER, Y_BORDER))
        self.screen.blit(self.player.surf, self.player.rect)
        for entity in self.blocks:
            self.screen.blit(entity.surf, entity.rect)
        for entity in self.npcs:
            self.screen.blit(entity.surf, entity.rect)

    def handle_input(self, pressed_keys):
        pressed_keys = pygame.key.get_pressed()
        self.player.update(pressed_keys)
