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
        self.level_one_NPC = pygame.image.load("threeformsPJ2x.png").convert()
        self.level_one_NPC_surface = pygame.surface.Surface((46, 64))
        self.level_one_NPC_surface.blit(self.level_one_NPC, (0, 0), (0, 0, 46, 64))
        self.level_one_NPC_surface.set_colorkey((0, 0, 0), RLEACCEL)
        self.surf = self.level_one_NPC_surface
        self.rect = self.level_one_NPC_surface.get_rect(topleft=[x, y])


# when you jump down from the block, it should trigger a dialogue box
# Dialogue box whole text at once and pressing enter key moves the dialogue along
# at the end of dialogue box, the fight begins
# your circle gets twice as big
# boss is impassable
# Level one boss shoots explosions in a outward circular pattern
# Boss life bar is shown at the bottom of the screen - updates with each hit
# half way - pattern becomes more dense and faster
# quarter way down - pattern becomes more dense and faster
# all the way down - dialogue box pops up
# boss disappears and you walk ahead to exit
# if you die, you respawn near the boss
