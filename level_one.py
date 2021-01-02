import pygame

from player import Player
from constants import *

level = """













     XX
   XXXX
  XXXXX
 XXXXXXXXXXXXXXXXXXXXXXX
"""


class LevelOne:
    def __init__(self, screen):
        self.screen = screen
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.next_scene = None
        self.game_surf = pygame.Surface(
            (self.screen_width - X_BORDER * 2, self.screen_height - Y_BORDER * 2)
        )
        self.player = Player(self.screen)
        self.block = pygame.Surface((32, 32))
        self.block.fill(pygame.Color("white"))

    def draw(self):
        self.screen.fill(pygame.Color("white"))
        self.game_surf.fill((0, 0, 0))
        self.screen.blit(self.game_surf, (X_BORDER, Y_BORDER))
        for ycoord, row in enumerate(level.splitlines()):
            for xcoord, cell in enumerate(row):
                if cell == "X":
                    cell = self.screen.blit(
                        self.block,
                        (
                            X_BORDER + xcoord * self.block.get_width(),
                            Y_BORDER + ycoord * self.block.get_height(),
                        ),
                    )
        self.screen.blit(self.player.surf, self.player.rect)

    def handle_input(self, event_list):
        pressed_keys = pygame.key.get_pressed()
        self.player.update(pressed_keys)
