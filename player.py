import pygame
import random
from pygame.locals import (
    KEYDOWN,
    K_LEFT,
    K_RIGHT,
    K_SPACE,
    RLEACCEL,
    K_RETURN,
)
from constants import *


class Player(pygame.sprite.Sprite):
    def __init__(self, screen):
        super(Player, self).__init__()
        # self.health = 5
        # self.healthsurf = pygame.image.load("health.png").convert()
        # self.healthsurf.set_colorkey((0, 0, 0), RLEACCEL)
        self.screen = screen
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.sprite_sheet = pygame.image.load("sprite_sheet.png").convert()
        self.surf = pygame.surface.Surface((32, 32))
        self.surf.blit(self.sprite_sheet, (0, 0), (0, 64, 32, 32))
        self.surf.set_colorkey((0, 0, 0), RLEACCEL)
        self.rect = self.surf.get_rect(
            topleft=(X_BORDER, self.screen_height - Y_BORDER - self.surf.get_height())
        )
        self.v_velocity = 0

    def update(self, pressed_keys):
        if pressed_keys[K_RIGHT]:
            self.rect.move_ip(5, 0)
        if pressed_keys[K_LEFT]:
            self.rect.move_ip(-5, 0)
        if self.rect.left < 0 + X_BORDER:
            self.rect.left = 0 + X_BORDER
        if self.rect.right > self.screen_width - X_BORDER:
            self.rect.right = self.screen_width - X_BORDER
        if self.rect.top < 0 + Y_BORDER:
            self.rect.top = 0 + Y_BORDER
        if self.rect.bottom > self.screen_height - Y_BORDER:
            self.rect.bottom = self.screen_height - Y_BORDER

    # def draw_health(self, screen):
    #     for i in range(self.health):
    #         self.healthrect = self.healthsurf.get_rect(
    #             center=((SCREEN_WIDTH - 10) - 20 * i, 20)
    #         )
    #         screen.blit(self.healthsurf, self.healthrect)
