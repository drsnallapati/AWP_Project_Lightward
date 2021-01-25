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
import boss_bullet

class NPC(pygame.sprite.Sprite):
    def __init__(self, x, y, screen, player, dialog_first, dialog_second, current_scene, blocks):
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

        self.bullets = pygame.sprite.Group()
        self.last_bullet_created = pygame.time.get_ticks()
        self.health = 10
        self.speed = 1
        self.blocks = blocks


    def update(self):
        if self.dialogue_activation_rect.colliderect(self.player.rect) and self.active_NPC == False:
            self.active_NPC = True
            self.show_dialogue = True
            self.start_ticks = pygame.time.get_ticks() #starter tick
        if self.active_NPC:
            seconds = (pygame.time.get_ticks()-self.start_ticks)/1000 #calculate how many seconds
            if seconds > 10: #if more than 4 seconds close the game
                self.show_dialogue = False #remove dialogue and remove NPC surfs
            # create a new bullet every .5 seconds
            if self.last_bullet_created + 500 <= pygame.time.get_ticks():
                self.last_bullet_created = pygame.time.get_ticks()
                self.bullets.add(boss_bullet.BossBullet(
                    self.screen,
                    self.rect.centerx,
                    self.rect.centery,
                    1,
                    0,
                    self.blocks)
                )
            self.rect.move_ip(0, self.speed)
            if self.speed > 0:
                for block in self.blocks:
                    if self.rect.colliderect(block.rect):
                        self.rect.bottom = block.rect.top
                        self.speed = -self.speed
            else:
                for block in self.blocks:
                    if self.rect.colliderect(block.rect):
                        self.rect.top = block.rect.bottom
                        self.speed = -self.speed
        for bullet in self.bullets:
            bullet.update()

    def draw_after_clipping(self):
        if self.show_dialogue == True:
            self.screen.blit(self.dialogue1_text,self.dialogue1_textRect)
            self.screen.blit(self.dialogue2_text,self.dialogue2_textRect)
            self.screen.blit(self.surf,self.rect)



