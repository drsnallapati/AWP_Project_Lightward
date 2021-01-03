import pygame
from pygame.locals import KEYDOWN, K_RETURN, MOUSEBUTTONUP
from level_one import LevelOne


class IntroScene:
    def __init__(self, screen):
        self.screen = screen
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.hovered = False
        self.game_surf = pygame.Surface(
            (self.screen_width - 20, self.screen_height - 20)
        )
        self.font = pygame.font.SysFont("monospace", 32)
        self.welcome_text = self.font.render("Lightward", True, [255, 255, 255])
        self.welcome_textRect = self.welcome_text.get_rect(
            center=[self.screen_width / 2, (self.screen_height - 500) / 2]
        )
        self.instructions_text = self.font.render(
            "Can you find the light?", True, [255, 255, 255]
        )
        self.instructions_textRect = self.instructions_text.get_rect(
            center=[self.screen_width / 2, self.screen_height / 2]
        )
        self.play_text = self.font.render("PLAY", True, [255, 255, 255])
        self.play_textRect = self.play_text.get_rect(
            center=[self.screen_width / 2, (self.screen_height + 200) / 2]
        )
        self.play_hover_text = self.font.render(
            "PLAY", True, pygame.Color("black"), pygame.Color("white")
        )
        self.next_scene = None

    def draw(self):
        self.screen.fill(pygame.Color("white"))
        self.game_surf.fill((0, 0, 0))
        self.screen.blit(self.game_surf, (10, 10))
        # places the text on the screen
        self.screen.blit(self.welcome_text, self.welcome_textRect)
        self.screen.blit(self.instructions_text, self.instructions_textRect)

        if self.hovered:
            self.screen.blit(self.play_hover_text, self.play_textRect)
        else:
            self.screen.blit(self.play_text, self.play_textRect)

    def handle_input(self, event_list):
        mouse_pos = pygame.mouse.get_pos()
        if self.play_textRect.collidepoint(mouse_pos):
            self.hovered = True
        else:
            self.hovered = False
        for event in event_list:
            if event.type == KEYDOWN:
                if event.key == K_RETURN:
                    self.next_scene = LevelOne
            if event.type == MOUSEBUTTONUP:
                if self.hovered:
                    self.next_scene = LevelOne