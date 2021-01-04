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
    def __init__(self, x, y, screen, player):
        super(NPC, self).__init__()
        self.screen = screen
        self.player = player
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.level_one_NPC = pygame.image.load("threeformsPJ2x.png").convert()
        self.level_one_NPC_surface = pygame.surface.Surface((46, 64))
        self.level_one_NPC_surface.blit(self.level_one_NPC, (0, 0), (0, 0, 46, 64))
        self.level_one_NPC_surface.set_colorkey((0, 0, 0), RLEACCEL)
        self.surf = self.level_one_NPC_surface
        self.rect = self.level_one_NPC_surface.get_rect(topleft=[x, y])
        # --- dialogue box ---
        self.font = pygame.font.SysFont("monospace", 20)
        self.dialogue1_text = self.font.render("Ah! I see you were able to find your way!", True, pygame.Color("white"), pygame.Color("black"))
        self.dialogue1_textRect = self.dialogue1_text.get_rect(
            center=[self.screen_width / 2, (self.screen_height) / 2]
        )
        self.dialogue2_text = self.font.render("Let's see if you've got what it takes!", True, pygame.Color("white"), pygame.Color("black"))
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



# ----TODO FINAL BOSS FIGHT -----
# boss is impassable
# when you jump down from the block, it should trigger a dialogue box
# at the end of dialogue box, the fight begins
# your circle gets twice as big
# Level one boss shoots explosions in a outward circular pattern
# Boss life bar is shown at the bottom of the screen - updates with each hit
# half way - pattern becomes more dense and faster
# quarter way down - pattern becomes more dense and faster
# all the way down - dialogue box pops up
# boss disappears and you walk ahead to exit
# if you die, you respawn near the boss
