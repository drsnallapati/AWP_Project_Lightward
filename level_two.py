import pygame
from player import Player
from constants import *
from level_2_design import level_2_design
import level
import level_three

class LevelTwo(level.Level):
    def __init__(self, screen,retry=False):
        self.level_design = level_2_design

        # -- Background
        self.level_2_background = pygame.image.load("level_2_backround.png").convert()
        self.level_2_background_rect = self.level_2_background.get_rect(topleft=[X_BORDER,Y_BORDER])

        super().__init__(screen, retry)
        # sets the circle that'll be around the character
        #-- Exit Block
        self.exit_block = pygame.image.load("exit.png")
        self.exit_block_rect = self.exit_block.get_rect(topleft=[X_BORDER, Y_BORDER])
        self.surf = pygame.surface.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))

    def draw(self):
        #since we set this in level, can we delete this as it defaults to self.screen?
        super().draw(self.surf)
        #draw the exit image
        self.screen.blit(self.surf, (0,0))
        self.screen.blit(self.exit_block, self.exit_block_rect)
        self.draw_after_clipping()

    #get the correct level design
    def get_level_design(self):
        return self.level_design

    def get_background(self):
        return [self.level_2_background, self.level_2_background_rect]

    def update(self):
        super().update()
        if self.player.rect.colliderect(self.exit_block_rect):
            self.next_scene = level_three.LevelThree(self.screen)

    def draw_after_clipping(self):
        super().draw_after_clipping()
        for entity in self.npcs:
            entity.draw_after_clipping()

    def get_level_tmx(self):
        return "level2.tmx"

    def get_dialog_strings(self):
        return [
            "How did you get this far??",
            "Turn back! You're not strong enough!"
        ]

    def get_current_level(self):
        return 2
