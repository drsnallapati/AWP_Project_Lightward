""" Represents NPCs in the game world """
import pygame
from constants import *

class BossBullet(pygame.sprite.Sprite):
    def __init__(self,screen, x_pos, y_pos, x_speed, y_speed):
        super().__init__()
        self.screen = screen
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.surf = pygame.image.load("ball_red.png").convert_alpha()
        self.rect = self.surf.get_rect(topleft=[x_pos, y_pos])
        self.x_speed = x_speed
        self.y_speed = y_speed

    def draw(self):
        self.screen.blit(self.surf, self.rect)

    def update(self):
        self.rect.move_ip(self.x_speed, self.y_speed)
        if ( (self.rect.left < 0 + X_BORDER) or
           (self.rect.right > self.screen_width - X_BORDER) or
           (self.rect.top < 0 + Y_BORDER) or
           (self.rect.bottom > self.screen_height - Y_BORDER) ) :
            self.kill()
