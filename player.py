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
    def __init__(self, screen, blocks):
        super(Player, self).__init__()
        # -- health
        self.health = 6
        # self.health_sheet = pygame.image.load("health.png").convert()
        #  self.full_health_surf = pygame.surface.Surface((32,32))
        #  self.five_health_surf = pygame.surface.Surface((32,32))
        #  self.four_health_surf = pygame.surface.Surface((32,32))
        #  self.three_health_surf = pygame.surface.Surface((32,32))
        #  self.two_health_surf = pygame.surface.Surface((32,32))
        #  self.one_health_surf = pygame.surface.Surface((32,32))
        #  self.zero_health_surf = pygame.surface.Surface((32,32))
        #  self.full_health_surf.blit(self.health_sheet, (0, 0), (0, 0, 32, 32))
        #  self.five_health_surf.blit(self.health_sheet, (0, 0), (0, 0, 64, 32))
        #  self.four_health_surf.blit(self.health_sheet, (0, 0), (0, 0, 96, 32))
        #  self.three_health_surf.blit(self.health_sheet, (0, 0), (0, 0, 128, 32))
        #  self.two_health_surf.blit(self.health_sheet, (0, 0), (0, 0, 0, 64))
        #  self.one_health_surf.blit(self.health_sheet, (0, 0), (0, 0, 32, 64))
        #  self.zero_health_surf.blit(self.health_sheet, (0, 0), (0, 0, 64, 64))

        # self.full_health_surf.set_colorkey((0, 0, 0), RLEACCEL)
        # self.five_health_surf.set_colorkey((0, 0, 0), RLEACCEL)
        # self.four_health_surf.set_colorkey((0, 0, 0), RLEACCEL)
        # self.three_health_surf.set_colorkey((0, 0, 0), RLEACCEL)
        # self.two_health_surf.set_colorkey((0, 0, 0), RLEACCEL)
        # self.one_health_surf.set_colorkey((0, 0, 0), RLEACCEL)
        # self.zero_health_surf.set_colorkey((0, 0, 0), RLEACCEL)

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
        self.rect = self.surf.get_rect(
            topleft=(X_BORDER, self.screen_height - Y_BORDER - self.surf.get_height())
        )
        self.v_velocity = 0
        self.is_jumping = False
        self.blocks = blocks

    def check_collide(self):
        player_rect = self.rect.copy()
        player_rect.left += 4
        player_rect.width -= 8
        player_rect.top += 8
        player_rect.height -= 8
        returned_blocks = []
        for block in self.blocks:
            if player_rect.colliderect(block.rect):
                returned_blocks.append(block)
        return returned_blocks

    def update(self, pressed_keys):
        if pressed_keys[K_RIGHT] or pressed_keys[K_d]:
            self.surf = self.right_looking_surface
            self.rect.move_ip(2, 0)
            block_hit_list = self.check_collide()
            for block in block_hit_list:
                self.rect.right = block.rect.left+4
        if pressed_keys[K_LEFT] or pressed_keys[K_a]:
            self.surf = self.left_looking_surface
            self.rect.move_ip(-2, 0)
            block_hit_list = self.check_collide()
            for block in block_hit_list:
                self.rect.left = block.rect.right-4
        if pressed_keys[K_SPACE] or pressed_keys[K_w] or pressed_keys[K_UP]:
            if self.v_velocity == 0 and self.is_jumping == False:
                self.v_velocity = JUMP_VELOCITY
                self.is_jumping = True
        self.rect.move_ip(0, self.v_velocity)
        if self.is_jumping == True and self.v_velocity < 0:
            block_hit_list = self.check_collide()
            for block in block_hit_list:
                self.rect.top = block.rect.bottom
                self.v_velocity = 0
        self.v_velocity += GRAVITY
        block_hit_list = self.check_collide()
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
    # if self.health == 6:
    #   self.full_health_rect = self.full_health_surf.get_rect(
    #             center=((SCREEN_WIDTH - X_BORDER) - 5 * i, 20)
    #         )
    #   screen.blit(self.full_health_surf, self.full_health_rect)
    # elif self.health == 5:
    #   self.five_health_rect = self.five_health_surf.get_rect(
    #             center=((SCREEN_WIDTH - X_BORDER) - 5 * i, 20)
    #         )
    #    screen.blit(self.five_health_surf, self.five_health_rect)
    # elif self.health == 4:
    #   self.four_health_rect = self.four_health_surf.get_rect(
    #             center=((SCREEN_WIDTH - X_BORDER) - 5 * i, 20)
    #         )
    #    screen.blit(self.four_health_surf, self.four_health_rect)
    # elif self.health == 3:
    #   self.three_health_rect = self.three_health_surf.get_rect(
    #             center=((SCREEN_WIDTH - X_BORDER) - 5 * i, 20)
    #         )
    #    screen.blit(self.three_health_surf, self.three_health_rect)
    # elif self.health == 2:
    #   self.two_health_rect = self.two_health_surf.get_rect(
    #             center=((SCREEN_WIDTH - X_BORDER) - 5 * i, 20)
    #         )
    #    screen.blit(self.two_health_surf, self.two_health_rect)
    # elif self.health == 1:
    #   self.one_health_rect = self.one_health_surf.get_rect(
    #             center=((SCREEN_WIDTH - X_BORDER) - 5 * i, 20)
    #         )
    #    screen.blit(self.one_health_surf, self.one_health_rect)
    #elif self.health == 0:
    #   self.zero_health_rect = self.zero_health_surf.get_rect(
    #             center=((SCREEN_WIDTH - X_BORDER) - 5 * i, 20)
    #         )
    #    screen.blit(self.zero_health_surf, self.zero_health_rect)
