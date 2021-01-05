
import pygame


class Block(pygame.sprite.Sprite):
    def __init__(self, x, y, surf):
        super(Block, self).__init__()
        self.surf = surf
        self.rect = self.surf.get_rect(topleft=[x, y])
