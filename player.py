import pygame
import random
from pygame.locals import (
    KEYDOWN,
    K_LEFT,
    K_RIGHT,
    K_SPACE,
    RLEACCEL,
    K_RETURN,
    K_w,
    K_a,
    K_d,
    K_UP,
)
from constants import *


class Player(pygame.sprite.Sprite):
    def __init__(self, screen, blocks, x, y):
        super(Player, self).__init__()
        # self.health = 5
        # self.healthsurf = pygame.image.load("health.png").convert()
        # self.healthsurf.set_colorkey((0, 0, 0), RLEACCEL)
        self.screen = screen
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.sprite_sheet = pygame.image.load("sprite_sheet.png").convert()
        self.left_looking_surface = pygame.surface.Surface((32, 32))
        self.right_looking_surface = pygame.surface.Surface((32, 32))
        self.left_looking_surface.blit(self.sprite_sheet, (0, 0), (0, 32, 32, 32))
        self.right_looking_surface.blit(self.sprite_sheet, (0, 0), (0, 64, 32, 32))
        self.left_looking_surface.set_colorkey((0, 0, 0), RLEACCEL)
        self.right_looking_surface.set_colorkey((0, 0, 0), RLEACCEL)
        self.surf = self.right_looking_surface
        self.rect = self.surf.get_rect(topleft=(x, y))
        self.v_velocity = 0
        self.is_jumping = False
        self.blocks = blocks

    def update(self, pressed_keys):
        if pressed_keys[K_RIGHT] or pressed_keys[K_d]:
            self.surf = self.right_looking_surface
            self.rect.move_ip(2, 0)
            block_hit_list = pygame.sprite.spritecollide(self, self.blocks, False)
            for block in block_hit_list:
                self.rect.right = block.rect.left
        if pressed_keys[K_LEFT] or pressed_keys[K_a]:
            self.surf = self.left_looking_surface
            self.rect.move_ip(-2, 0)
            block_hit_list = pygame.sprite.spritecollide(self, self.blocks, False)
            for block in block_hit_list:
                self.rect.left = block.rect.right
        if pressed_keys[K_SPACE] or pressed_keys[K_w] or pressed_keys[K_UP]:
            if self.v_velocity == 0 and self.is_jumping == False:
                self.v_velocity = JUMP_VELOCITY
                self.is_jumping = True
        self.rect.move_ip(0, self.v_velocity)
        if self.is_jumping == True and self.v_velocity < 0:
            block_hit_list = pygame.sprite.spritecollide(self, self.blocks, False)
            for block in block_hit_list:
                self.rect.top = block.rect.bottom
                self.v_velocity = 0
        self.v_velocity += GRAVITY
        block_hit_list = pygame.sprite.spritecollide(self, self.blocks, False)
        for block in block_hit_list:
            self.is_jumping = False
            self.rect.bottom = block.rect.top
            self.v_velocity = 0
        if self.rect.left < 0 + X_BORDER:
            self.rect.left = 0 + X_BORDER
        if self.rect.right > self.screen_width - X_BORDER:
            self.rect.right = self.screen_width - X_BORDER
        if self.rect.top < 0 + Y_BORDER:
            self.rect.top = 0 + Y_BORDER
        if self.rect.bottom > self.screen_height - Y_BORDER:
            self.rect.bottom = self.screen_height - Y_BORDER
            self.is_jumping = False
            self.v_velocity = 0

    # def draw_health(self, screen):
    #     for i in range(self.health):
    #         self.healthrect = self.healthsurf.get_rect(
    #             center=((SCREEN_WIDTH - 10) - 20 * i, 20)
    #         )
    #         screen.blit(self.healthsurf, self.healthrect)
