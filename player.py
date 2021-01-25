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
import boss_bullet

FACING_RIGHT = 0
FACING_LEFT = 1

class Player(pygame.sprite.Sprite):
    def __init__(self, screen, impassables, blocks):
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
                center=((SCREEN_WIDTH/2), Y_BORDER/2)
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
        self.sprite_sheet = pygame.image.load("sprite_sheet.png").convert_alpha()
        self.player_frame_data = {
            "stand_left" : [32, 32, 32, 32],
            "walk_left" : [64, 32, 32, 32],
            "stand_right" : [32, 64, 32, 32],
            "walk_right" : [64, 64, 32, 32],
            "jump_left" : [0, 32, 32, 32],
            "jump_right" : [0, 64, 32, 32]
        }
        self.player_frames = {}
        for frame_data in self.player_frame_data:
            new_frame = pygame.surface.Surface((32, 32), pygame.SRCALPHA)
            new_frame.blit(self.sprite_sheet, (0,0), self.player_frame_data[frame_data])
            self.player_frames[frame_data] = new_frame
        self.surf = self.player_frames["stand_right"]
        self.rect = self.surf.get_rect(
            topleft=(X_BORDER, self.screen_height - Y_BORDER - self.surf.get_height())
        )
        self.v_velocity = 0
        self.is_jumping = False
        self.impassables = impassables
        self.blocks = blocks
        self.last_gravity_check = pygame.time.get_ticks()

        self.player_bullets = pygame.sprite.Group()
        self.last_player_bullet_created = pygame.time.get_ticks()
        self.last_walk_frame = pygame.time.get_ticks()
        self.facing = FACING_RIGHT


    def check_collide(self):
        player_rect = self.rect.copy()
        player_rect.left += 4
        player_rect.width -= 8
        player_rect.top += 8
        player_rect.height -= 8
        returned_impassables = []
        for impassable in self.impassables:
            if player_rect.colliderect(impassable.rect):
                returned_impassables.append(impassable)
        return returned_impassables

    def update(self, pressed_keys):
        # moving right
        if pressed_keys[K_RIGHT] or pressed_keys[K_d]:
            self.facing = FACING_RIGHT
            if not self.is_jumping:
                if self.surf not in [self.player_frames["stand_right"], self.player_frames["walk_right"]]:
                    self.surf = self.player_frames["stand_right"]
                    self.last_walk_frame = pygame.time.get_ticks()
                elif self.surf == self.player_frames["stand_right"]:
                    if self.last_walk_frame + 500 <= pygame.time.get_ticks():
                        self.last_walk_frame = pygame.time.get_ticks()
                        self.surf = self.player_frames["walk_right"]
                elif self.surf == self.player_frames["walk_right"]:
                    if self.last_walk_frame + 500 <= pygame.time.get_ticks():
                        self.last_walk_frame = pygame.time.get_ticks()
                        self.surf = self.player_frames["stand_right"]
            else:
                self.surf = self.player_frames["jump_right"]
            self.rect.move_ip(2, 0)
            block_hit_list = self.check_collide()
            for block in block_hit_list:
                self.rect.right = block.rect.left+4
        # moving left
        if pressed_keys[K_LEFT] or pressed_keys[K_a]:
            self.facing = FACING_LEFT
            if not self.is_jumping:
                if self.surf not in [self.player_frames["stand_left"], self.player_frames["walk_left"]]:
                    self.surf = self.player_frames["stand_left"]
                    self.last_walk_frame = pygame.time.get_ticks()
                elif self.surf == self.player_frames["stand_left"]:
                    if self.last_walk_frame + 500 <= pygame.time.get_ticks():
                        self.last_walk_frame = pygame.time.get_ticks()
                        self.surf = self.player_frames["walk_left"]
                elif self.surf == self.player_frames["walk_left"]:
                    if self.last_walk_frame + 500 <= pygame.time.get_ticks():
                        self.last_walk_frame = pygame.time.get_ticks()
                        self.surf = self.player_frames["stand_left"]
            else:
                self.surf = self.player_frames["jump_left"]
            self.rect.move_ip(-2, 0)
            block_hit_list = self.check_collide()
            for block in block_hit_list:
                self.rect.left = block.rect.right-4
        # shooting
        if pressed_keys[K_s]:
            # check which direction you're facing and shoot the bullet that direction
            if self.last_player_bullet_created + 500 <= pygame.time.get_ticks():
                self.last_player_bullet_created = pygame.time.get_ticks()
                if self.facing == FACING_RIGHT:
                    bullet = boss_bullet.BossBullet(
                        self.screen,
                        self.rect.topright[0]-8,
                        self.rect.topright[1]+10,
                        2,
                        0,
                        self.blocks,
                        boss_bullet.PLAYER
                    )
                else:
                    bullet = boss_bullet.BossBullet(
                        self.screen,
                        self.rect.topleft[0]-8,
                        self.rect.topleft[1]+10,
                        -2,
                        0,
                        self.blocks,
                        boss_bullet.PLAYER
                    )
                self.player_bullets.add(bullet)
        for bullet in self.player_bullets:
            bullet.update()
        # jumping
        if pressed_keys[K_SPACE] or pressed_keys[K_w] or pressed_keys[K_UP]:
            if self.v_velocity == 0 and self.is_jumping == False:
                self.v_velocity = JUMP_VELOCITY
                self.is_jumping = True
                if self.surf in [self.player_frames["stand_left"], self.player_frames["walk_left"]]:
                    self.surf = self.player_frames["jump_left"]
                else:
                    self.surf = self.player_frames["jump_right"]
        #keep the character from going into the map tile blocks
        self.rect.move_ip(0, self.v_velocity)
        if self.is_jumping == True and self.v_velocity < 0:
            block_hit_list = self.check_collide()
            for block in block_hit_list:
                self.rect.top = block.rect.bottom
                self.v_velocity = 0
        # keeps the character from leaving the screen
        if self.last_gravity_check + 48 < pygame.time.get_ticks():
            self.last_gravity_check = pygame.time.get_ticks()
            self.v_velocity += GRAVITY
        block_hit_list = self.check_collide()
        for block in block_hit_list:
            if self.is_jumping:
                self.is_jumping = False
                if self.surf == self.player_frames["jump_left"]:
                    self.surf = self.player_frames["stand_left"]
                else:
                    self.surf = self.player_frames["stand_right"]
            self.rect.bottom = block.rect.top
            self.v_velocity = 0
        if self.rect.left < 0 + X_BORDER:
            self.rect.left = 0 + X_BORDER
        if self.rect.right > self.screen_width - X_BORDER:
            self.rect.right = self.screen_width - X_BORDER
        if self.rect.top < 0 + Y_BORDER:
            self.rect.top = 0 + Y_BORDER
        if self.rect.bottom > self.screen_height:
            self.rect.bottom = self.screen_height
            self.is_jumping = False
            self.v_velocity = 0

    def draw(self, surf):
        surf.blit(self.surf, self.rect)
        for bullet in self.player_bullets:
            bullet.draw(surf)

    def draw_health(self):
        # check which health symbol needs to be drawn and pull that screen
        self.screen.blit(self.health_surfaces[self.health], self.health_rect)
