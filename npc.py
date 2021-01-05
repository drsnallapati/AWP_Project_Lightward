""" Represents NPCs in the game world """
import pygame
from pygame.locals import (
    KEYDOWN,
    K_LEFT,
    K_RIGHT,
    K_SPACE,
    RLEACCEL,
    K_RETURN,
    K_w,
    K_a,
    K_d,
    K_UP,
)
from constants import *

class NPC(pygame.sprite.Sprite):
    def __init__(self, x, y, screen, player, dialog_first, dialog_second,current_scene):
        super(NPC, self).__init__()
        self.screen = screen
        self.player = player
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.npcs = pygame.image.load("threeformsPJ2x.png").convert()
        self.surf = None
        if current_scene == 1:
            self.surf = pygame.surface.Surface((46, 64))
            self.surf.blit(self.npcs, (0, 0), (0, 0, 46, 64))
        if current_scene == 2:
            self.surf = pygame.surface.Surface((72,64))
            self.surf.blit(self.npcs, (0, 0), (51, 0, 72, 64))
        if current_scene == 3:
            self.surf = pygame.surface.Surface((51,64))
            self.surf.blit(self.npcs, (0, 0), (134, 0, 51, 64))

        self.surf.set_colorkey((0, 0, 0), RLEACCEL)
        self.rect = self.surf.get_rect(topleft=[x, y])

        # --- dialogue box---
        self.font = pygame.font.SysFont("monospace", 20)
        self.dialogue1_text = self.font.render(dialog_first, True, pygame.Color("white"), pygame.Color("black"))
        self.dialogue1_textRect = self.dialogue1_text.get_rect(
            center=[self.screen_width / 2, (self.screen_height) / 2]
        )
        self.dialogue2_text = self.font.render(dialog_second, True, pygame.Color("white"), pygame.Color("black"))
        self.dialogue2_textRect = self.dialogue2_text.get_rect(
            center=[self.screen_width / 2, ((self.screen_height/2) + (self.dialogue1_text.get_height()+14))]
        )

        self.active_NPC = False
        self.show_dialogue = False
        self.dialogue_activation_rect = self.rect.copy()
        #making the dialogue show up a little bit before you get to the enemy
        self.dialogue_activation_rect.width *= 2
        self.dialogue_activation_rect.left -= self.surf.get_width()/2

    def update(self):

        if self.dialogue_activation_rect.colliderect(self.player.rect) and self.active_NPC == False:
            self.active_NPC = True
            self.show_dialogue = True
            self.start_ticks = pygame.time.get_ticks() #starter tick
        if self.active_NPC == True:
            seconds = (pygame.time.get_ticks()-self.start_ticks)/1000 #calculate how many seconds
            if seconds > 4: #if more than 4 seconds close the game
                self.show_dialogue = False #remove dialogue and remove NPC surfs
                self.kill()

    def draw_after_clipping(self):
            if self.show_dialogue == True:
                self.screen.blit(self.dialogue1_text,self.dialogue1_textRect)
                self.screen.blit(self.dialogue2_text,self.dialogue2_textRect)
                self.screen.blit(self.surf,self.rect)



