import pygame


class Block(pygame.sprite.Sprite):
    def __init__(self, x, y):
        super(Block, self).__init__()
        self.surf = pygame.Surface((32, 32))
        self.surf.fill(pygame.Color("white"))
        self.rect = self.surf.get_rect(topleft=[x, y])
