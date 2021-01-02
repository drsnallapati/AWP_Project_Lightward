import pygame

from player import Player
from constants import *
from level_1_design import level


class Block(pygame.sprite.Sprite):
    def __init__(self, x, y):
        super(Block, self).__init__()
        self.surf = pygame.Surface((32, 32))
        self.surf.fill(pygame.Color("white"))
        self.rect = self.surf.get_rect(topleft=[x, y])


class LevelOne:
    def __init__(self, screen):
        self.screen = screen
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.next_scene = None
        self.game_surf = pygame.Surface(
            (self.screen_width - X_BORDER * 2, self.screen_height - Y_BORDER * 2)
        )

        self.blocks = pygame.sprite.Group()
        for ycoord, row in enumerate(level.splitlines()):
            for xcoord, cell in enumerate(row):
                if cell == "X":
                    cell = Block(
                        X_BORDER + xcoord * 32,
                        Y_BORDER + ycoord * 32,
                    )
                    self.blocks.add(cell)
        self.player = Player(self.screen, self.blocks)

    def draw(self):
        self.screen.fill(pygame.Color("white"))
        self.game_surf.fill((0, 0, 0))
        self.screen.blit(self.game_surf, (X_BORDER, Y_BORDER))
        self.screen.blit(self.player.surf, self.player.rect)
        for entity in self.blocks:
            self.screen.blit(entity.surf, entity.rect)

    def handle_input(self, event_list):
        pressed_keys = pygame.key.get_pressed()
        self.player.update(pressed_keys)
