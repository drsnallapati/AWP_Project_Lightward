# import
import pygame
from intro import IntroScene

pygame.init()
pygame.display.set_caption("Lightward")
from pygame.locals import (
    QUIT,
    KEYDOWN,
    K_ESCAPE,
    K_RETURN,
)
from constants import *


# sets the clock so that you can choose how fast you want to update the game. Also sets a consistent rate
clock = pygame.time.Clock()

# set up the game window
screen = pygame.display.set_mode([SCREEN_WIDTH, SCREEN_HEIGHT])

# instance of the intro scene
intro_scene = IntroScene(screen)
current_scene = intro_scene

current_music = current_scene.get_music_file()
pygame.mixer.music.load(current_music)
pygame.mixer.music.play(-1)

# MAIN LOOP
running = True
while running:
    events = pygame.event.get()
    for event in events:
        # checks all the keydown strokes
        if event.type == KEYDOWN:
            if event.key == K_ESCAPE:
                running = False
        if event.type == QUIT:
            running = False

    # render the correct scene
    current_scene.handle_input(events)
    current_scene.update()
    current_scene.draw()

    # render the screen and flip it
    pygame.display.flip()

    if current_scene.next_scene:
        next_scene = current_scene.next_scene
        current_scene = next_scene
        if current_music != current_scene.get_music_file():
            current_music = current_scene.get_music_file()
            pygame.mixer.music.stop()
            pygame.mixer.music.load(current_music)
            pygame.mixer.music.play(-1)


    # Run at most at 60 FPS
    clock.tick(60)

pygame.quit()
