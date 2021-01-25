""" Represents Bullets in the game world """
import pygame
from constants import *

ENEMY = 0
PLAYER = 1

class BossBullet(pygame.sprite.Sprite):
    def __init__(self, screen, x_pos, y_pos, x_speed, y_speed, blocks, bullet_type=ENEMY):
        super().__init__()
        self.screen = screen
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.blocks = blocks
        if bullet_type == ENEMY:
            self.surf = pygame.image.load("ball_red.png").convert_alpha()
        else:
            self.surf = pygame.image.load("ball_yellow.png").convert_alpha()
        self.rect = self.surf.get_rect(topleft=[x_pos, y_pos])
        self.x_speed = x_speed
        self.y_speed = y_speed

    def draw(self, surf=None):
        if surf:
            surf.blit(self.surf, self.rect)
        else:
            self.screen.blit(self.surf, self.rect)

    def update(self):
        self.rect.move_ip(self.x_speed, self.y_speed)
        if ( (self.rect.left < 0 + X_BORDER) or
           (self.rect.right > self.screen_width - X_BORDER) or
           (self.rect.top < 0 + Y_BORDER) or
           (self.rect.bottom > self.screen_height) ) :
            self.kill()
        if pygame.sprite.spritecollideany(self, self.blocks):
            self.kill()
