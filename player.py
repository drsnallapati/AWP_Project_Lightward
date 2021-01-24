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
    K_s
)
from constants import *


class Player(pygame.sprite.Sprite):
    def __init__(self, screen, blocks):
        super(Player, self).__init__()
        # -- health
        self.health = 6
        self.health_sheet = pygame.image.load("health.png").convert_alpha()
        health_size = 40
        self.full_health_surf = pygame.surface.Surface((health_size,health_size))
        self.five_health_surf = pygame.surface.Surface((health_size,health_size))
        self.four_health_surf = pygame.surface.Surface((health_size,health_size))
        self.three_health_surf = pygame.surface.Surface((health_size,health_size))
        self.two_health_surf = pygame.surface.Surface((health_size,health_size))
        self.one_health_surf = pygame.surface.Surface((health_size,health_size))
        self.zero_health_surf = pygame.surface.Surface((health_size,health_size))
        self.health_surfaces = [
            self.zero_health_surf,
            self.one_health_surf,
            self.two_health_surf,
            self.three_health_surf,
            self.four_health_surf,
            self.five_health_surf,
            self.full_health_surf
        ]

        self.health_rect = self.full_health_surf.get_rect(
                center=((SCREEN_WIDTH - X_BORDER) - health_size, 20)
            )

        self.full_health_surf.blit(self.health_sheet, (0, 0), (0, 0, health_size, health_size))
        self.five_health_surf.blit(self.health_sheet, (0, 0), (45, 0, health_size, health_size))
        self.four_health_surf.blit(self.health_sheet, (0, 0), (96, 0, health_size, health_size))
        self.three_health_surf.blit(self.health_sheet, (0, 0), (147, 0, health_size, health_size))
        self.two_health_surf.blit(self.health_sheet, (0, 0), (0, 48, health_size, health_size))
        self.one_health_surf.blit(self.health_sheet, (0, 0), (45, 48, health_size, health_size))
        self.zero_health_surf.blit(self.health_sheet, (0, 0), (96, 48, health_size, health_size))

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
        # moving left
        if pressed_keys[K_RIGHT] or pressed_keys[K_d]:
            self.surf = self.right_looking_surface
            self.rect.move_ip(2, 0)
            block_hit_list = self.check_collide()
            for block in block_hit_list:
                self.rect.right = block.rect.left+4
        # moving right
        if pressed_keys[K_LEFT] or pressed_keys[K_a]:
            self.surf = self.left_looking_surface
            self.rect.move_ip(-2, 0)
            block_hit_list = self.check_collide()
            for block in block_hit_list:
                self.rect.left = block.rect.right-4
        # shooting
        if pressed_keys[K_s]:
            self.health -= 1
        # jumping
        if pressed_keys[K_SPACE] or pressed_keys[K_w] or pressed_keys[K_UP]:
            if self.v_velocity == 0 and self.is_jumping == False:
                self.v_velocity = JUMP_VELOCITY
                self.is_jumping = True
        #keep the character from going into the map tile blocks
        self.rect.move_ip(0, self.v_velocity)
        if self.is_jumping == True and self.v_velocity < 0:
            block_hit_list = self.check_collide()
            for block in block_hit_list:
                self.rect.top = block.rect.bottom
                self.v_velocity = 0
        # keeps the character from leaving the screen
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

    def draw(self, surf):
        surf.blit(self.surf, self.rect)

    def draw_health(self):
        # check which health symbol needs to be drawn and pull that screen
        self.screen.blit(self.health_surfaces[self.health], self.health_rect)
