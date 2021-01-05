import pygame
from player import Player
from constants import *
from level_3_design import level_3_design
from level import Level
from game_over import Game_Over

class LevelThree(Level):
    def __init__(self, screen):
        self.level_design = level_3_design

        # -- Background
        self.level_3_background = pygame.image.load("level_3_backround.png")
        self.level_3_background_rect = self.level_3_background.get_rect(topleft=[X_BORDER,Y_BORDER])

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
        for npc in self.npcs:
            npc.draw_after_clipping()

    #get the correct level design
    def get_level_design(self):
        return self.level_design

    def get_background(self):
        return [self.level_3_background, self.level_3_background_rect]

    def update(self):
        super().update()
        if self.player.rect.colliderect(self.exit_block_rect):
            self.next_scene = Game_Over

    def draw_after_clipping(self):
        for entity in self.npcs:
            entity.draw_after_clipping()

    def get_level_tmx(self):
        return "level3.tmx"

    def get_dialog_strings(self):
        return [
            "We all end up in a dark place sometimes",
            "Remember what you did here...for it was not easy"
        ]

    def get_current_level(self):
        return 3
