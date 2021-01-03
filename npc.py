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


class NPC(pygame.sprite.Sprite):
    def __init__(self, x, y):
        super(NPC, self).__init__()
        self.level_one_NPC = pygame.image.load("threeformsPJ2.png").convert()
        self.level_one_NPC_surface = pygame.surface.Surface((32, 32))
        self.level_one_NPC_surface.blit(self.level_one_NPC, (0, 0), (0, 0, 32, 32))
        self.level_one_NPC_surface.set_colorkey((0, 0, 0), RLEACCEL)
        self.surf = self.level_one_NPC_surface
        self.rect = self.level_one_NPC_surface.get_rect(topleft=[x, y])
