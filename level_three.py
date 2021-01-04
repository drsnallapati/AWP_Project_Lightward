import pygame
from player import Player
from constants import *
from level_3_design import level_3_design
from level import Level



class LevelThree(Level):
    def __init__(self, screen):
        self.level_design = level_3_design
        super(LevelThree, self).__init__(screen)
        # sets the circle that'll be around the character
        #-- Exit Block
        self.exit_block = pygame.image.load("exit.png")
        self.exit_block_rect = self.exit_block.get_rect(topleft=[X_BORDER, Y_BORDER])

    def draw(self):
        surf = pygame.surface.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))
        super().draw()
        #draw the exit image
        self.screen.blit(self.exit_block, self.exit_block_rect)

    #get the correct level design
    def get_level_design(self):
        return self.level_design


    #maybe should just be in the draw function instead now
    def draw_after_clipping(self):
        for entity in self.npcs:
            entity.draw_after_clipping()
