import pygame
from player import Player
from constants import *
from level_1_design import level_1_design
from level import Level
from level_two import LevelTwo

class LevelOne(Level):
    def __init__(self, screen):
        self.level_design = level_1_design
        # -- Background
        self.level_1_background = pygame.image.load("level_1_backround.png")
        self.level_1_background_rect = self.level_1_background.get_rect(topleft=[X_BORDER,Y_BORDER])
        super().__init__(screen)
        # sets the circle that'll be around the character
        self.radius = LEVEL_1_LIGHT_RADIUS
        self.cover_surf = pygame.Surface((self.radius * 2, self.radius * 2))
        self.cover_surf.fill(0)
        self.cover_surf.set_colorkey((255, 255, 255))
        pygame.draw.circle(
            self.cover_surf, (255, 255, 255), (self.radius, self.radius), self.radius
        )
        #-- Exit Block
        self.exit_block = pygame.image.load("exit.png")
        self.exit_block_rect = self.exit_block.get_rect(topleft=[X_BORDER, Y_BORDER])

    def draw(self):
        surf = pygame.surface.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))
        clip_center = self.player.rect.center
        # clear screen and set clipping region
        # surf.fill(0)
        clip_rect = pygame.Rect(
            clip_center[0] - self.radius,
            clip_center[1] - self.radius,
            self.radius * 2,
            self.radius * 2,
        )
        surf.set_clip(clip_rect)

        super(LevelOne, self).draw(surf)


        # draw transparent circle and update display

        surf.blit(self.cover_surf, clip_rect)

        self.screen.blit(surf, (0,0))

        self.draw_after_clipping()

    def get_level_design(self):
        return self.level_design

    def get_background(self):
        return [self.level_1_background, self.level_1_background_rect]

    def update(self):
        super().update()
        if self.player.rect.colliderect(self.exit_block_rect):
            self.next_scene = LevelTwo

    def draw_after_clipping(self):
        for entity in self.npcs:
            entity.draw_after_clipping()
        self.screen.blit(self.exit_block, self.exit_block_rect)

    def get_level_tmx(self):
        return "level1.tmx"
