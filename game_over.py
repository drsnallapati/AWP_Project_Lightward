import pygame
from pygame.locals import KEYDOWN, K_RETURN, MOUSEBUTTONUP
import level_one
import level_two
import level_three

class GameOver:
    def __init__(self, screen, text="You found your way! Thanks for playing!", replay=1, retry=False):
        self.screen = screen
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.hovered_play_again = False
        self.hovered_exit_game = False
        self.game_surf = pygame.Surface(
            (self.screen_width - 20, self.screen_height - 20)
        )
        self.font = pygame.font.SysFont("monospace", 32)
        self.welcome_text = self.font.render("Lightward", True, [255, 255, 255])
        self.welcome_textRect = self.welcome_text.get_rect(
            center=[self.screen_width / 2, (self.screen_height - 500) / 2]
        )
        self.instructions_text = self.font.render(
            text, True, [255, 255, 255]
        )
        self.instructions_textRect = self.instructions_text.get_rect(
            center=[self.screen_width / 2, self.screen_height / 2]
        )

        self.play_again_text = self.font.render("PLAY AGAIN", True, [255, 255, 255])
        self.play_again_textRect = self.play_again_text.get_rect(
            center=[self.screen_width / 2, (self.screen_height + 200) / 2]
        )
        self.play_again_hover_text = self.font.render(
            "PLAY AGAIN", True, pygame.Color("black"), pygame.Color("white")
        )
        self.exit_text = self.font.render("Goodbye!", True, [255, 255, 255])
        self.exit_textRect = self.exit_text.get_rect(
            center=[self.screen_width / 2, (self.screen_height + 400) / 2]
        )
        self.exit_hover_text = self.font.render(
            "Goodbye!", True, pygame.Color("black"), pygame.Color("white")
        )
        self.next_scene = None
        self.replay = replay
        self.retry = retry

    def draw(self):
        self.screen.fill(pygame.Color("white"))
        self.game_surf.fill((0, 0, 0))
        self.screen.blit(self.game_surf, (10, 10))
        self.screen.blit(self.welcome_text, self.welcome_textRect)
        self.screen.blit(self.instructions_text, self.instructions_textRect)
        if self.hovered_play_again:
            self.screen.blit(self.play_again_hover_text, self.play_again_textRect)
        else:
            self.screen.blit(self.play_again_text, self.play_again_textRect)
        if self.hovered_exit_game:
            self.screen.blit(self.exit_hover_text, self.play_again_textRect)
        else:
            self.screen.blit(self.exit_text, self.exit_textRect)

    def handle_input(self, event_list):
        mouse_pos = pygame.mouse.get_pos()
        if self.play_again_textRect.collidepoint(mouse_pos):
            self.hovered_play_again = True
        else:
            self.hovered_play_again = False
        if self.exit_textRect.collidepoint(mouse_pos):
            self.hovered_exit = True
        else:
            self.hovered_exit = False
        for event in event_list:
            if event.type == KEYDOWN:
                if event.key == K_RETURN:
                    if not self.retry:
                        if self.replay == 1:
                            self.next_scene = level_one.LevelOne(self.screen, True)
                        elif self.replay == 2:
                            self.next_scene = level_two.LevelTwo(self.screen, True)
                        else:
                            self.next_scene = level_three.LevelThree(self.screen, True)
                    else:
                        self.next_scene = level_one.LevelOne(self.screen, False)
            if event.type == MOUSEBUTTONUP:
                if self.hovered_play_again:
                    if not self.retry:
                        if self.replay == 1:
                            self.next_scene = level_one.LevelOne(self.screen, True)
                        elif self.replay == 2:
                            self.next_scene = level_two.LevelTwo(self.screen, True)
                        else:
                            self.next_scene = level_three.LevelThree(self.screen, True)
                    else:
                        self.next_scene = level_one.LevelOne(self.screen, False)

                if self.hovered_exit:
                    pygame.quit()

    def update(self):
        pass

    def get_music_file(self):
        return "end.mp3"
