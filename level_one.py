import pygame
from player import Player
from constants import *
from level_1_design import level_1_design
import level
import level_two

class LevelOne(level.Level):
    def __init__(self, screen, retry=False):
        self.level_design = level_1_design
        # -- Background
        self.level_1_background = pygame.image.load("level_1_backround.png").convert()
        self.level_1_background_rect = self.level_1_background.get_rect(topleft=[X_BORDER,Y_BORDER])
        super().__init__(screen, retry)
        # sets the circle that'll be around the character
        self.radius = LEVEL_1_LIGHT_RADIUS
        #-- Exit Block
        self.exit_block = pygame.image.load("exit.png")
        self.exit_block_rect = self.exit_block.get_rect(topleft=[X_BORDER, Y_BORDER])
        # retry
        self.retry = retry

        self.font = pygame.font.SysFont("Garamond", 32)
        self.walk_text = self.font.render("Press arrow keys to move", True, [255, 255, 255])
        self.walk_textRect = self.walk_text.get_rect(
            center=[self.screen_width / 2, 16]
        )
        self.jump_text = self.font.render("Press up to jump", True, [255, 255, 255])
        self.jump_textRect = self.jump_text.get_rect(
            center=[self.screen_width / 2, 48]
        )
        self.shoot_text = self.font.render("Press z to shoot", True, [255, 255, 255])
        self.shoot_textRect = self.shoot_text.get_rect(
            center=[self.screen_width / 2, 80]
        )



    def draw(self):
        self.surf = pygame.surface.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))

        clip_center = self.player.rect.center
        # clear screen and set clipping region
        clip_rect = pygame.Rect(
            clip_center[0] - self.radius,
            clip_center[1] - self.radius,
            self.radius * 2,
            self.radius * 2,
        )
        self.surf.set_clip(clip_rect)

        self.cover_surf = pygame.Surface((self.radius * 2, self.radius * 2))
        self.cover_surf.fill(0)
        self.cover_surf.set_colorkey((255, 255, 255))
        pygame.draw.circle(
            self.cover_surf, (255, 255, 255), (self.radius, self.radius), self.radius
        )

        super(LevelOne, self).draw(self.surf)


        # draw transparent circle and update display

        self.surf.blit(self.cover_surf, clip_rect)

        self.screen.blit(self.surf, (0,0))

        self.draw_after_clipping()

    def get_level_design(self):
        return self.level_design

    def get_background(self):
        return [self.level_1_background, self.level_1_background_rect]

    def update(self):
        super().update()
        if self.player.rect.colliderect(self.exit_block_rect):
            self.next_scene = level_two.LevelTwo(self.screen)
        self.radius = LEVEL_1_LIGHT_RADIUS+(SCREEN_HEIGHT-self.player.rect.bottom)/4

    def draw_after_clipping(self):
        super().draw_after_clipping()
        for entity in self.npcs:
            entity.draw_after_clipping()
        self.screen.blit(self.exit_block, self.exit_block_rect)
        if not self.player.shot_once:
            self.screen.blit(self.shoot_text, self.shoot_textRect)
        if not self.player.walked_once:
            self.screen.blit(self.walk_text, self.walk_textRect)
        if not self.player.jumped_once:
            self.screen.blit(self.jump_text, self.jump_textRect)

    def get_level_tmx(self):
        return "level1.tmx"

    def get_dialog_strings(self):
        return [
            "Ah! I see you were able to find your way!",
            "Let's see if you've got what it takes!"
        ]

    def get_current_level(self):
        return 1
