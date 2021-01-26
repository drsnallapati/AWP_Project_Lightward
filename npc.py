""" Represents NPCs in the game world """
import pygame
import random
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

HEALTH_BLOCK_WIDTH = 24
HEALTH_BLOCK_HEIGHT = 16
HEALTH_BLOCK_Y_OFFSET = 24
HEALTH_BLOCK_X_OFFSET = 32

class NPC(pygame.sprite.Sprite):
    def __init__(self, x, y, screen, player, dialog_first, dialog_second, current_scene, blocks):
        super(NPC, self).__init__()
        self.screen = screen
        self.player = player
        self.screen_width = screen.get_width()
        self.screen_height = screen.get_height()
        self.current_scene = current_scene

        self.npcs = pygame.image.load("Bigger_bosses.png").convert_alpha()
        self.surf = None
        if current_scene == 1:
            self.surf = pygame.surface.Surface((88, 110), pygame.SRCALPHA)
            self.surf.blit(self.npcs, (0, 0), (0, 0, 88, 110))
            self.health = 10
            self.maxHealth = 10
        if current_scene == 2:
            self.surf = pygame.surface.Surface((128,110), pygame.SRCALPHA)
            self.surf.blit(self.npcs, (0, 0), (88, 0, 128, 110))
            self.health = 15
            self.maxHealth = 15
        if current_scene == 3:
            self.surf = pygame.surface.Surface((95,110), pygame.SRCALPHA)
            self.surf.blit(self.npcs, (0, 0), (220, 0, 95, 110))
            self.health = 20
            self.maxHealth = 20
        # self.surf.set_colorkey((0, 0, 0), RLEACCEL)
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
        self.dialogue_activation_rect.width *= 5
        self.dialogue_activation_rect.left -= self.surf.get_width()/2

        self.bullets = pygame.sprite.Group()
        self.last_bullet_created = pygame.time.get_ticks()
        self.speed = 1
        if self.current_scene == 2:
            self.speed = 2
        if self.current_scene == 3:
            self.speed = 3
        self.blocks = blocks

        self.healthBlock = pygame.surface.Surface([HEALTH_BLOCK_WIDTH, HEALTH_BLOCK_HEIGHT])
        self.healthBlock.fill(pygame.Color("Purple"))
        self.hurtBlock = pygame.surface.Surface([HEALTH_BLOCK_WIDTH, HEALTH_BLOCK_HEIGHT])
        self.hurtBlock.fill(pygame.Color("Yellow"))
        self.hurtTimes = {}
        self.boss_bullet_delay = 500
        if self.current_scene == 2:
            self.boss_bullet_delay = 400
        if self.current_scene == 3:
            self.boss_bullet_delay = 200


    def update(self):
        if self.dialogue_activation_rect.colliderect(self.player.rect) and self.active_NPC == False:
            self.active_NPC = True
            self.show_dialogue = True
            self.start_ticks = pygame.time.get_ticks() #starter tick
        if self.active_NPC:
            seconds = (pygame.time.get_ticks()-self.start_ticks)/1000 #calculate how many seconds
            if seconds > 10: #if more than 10 seconds close the game
                self.show_dialogue = False #remove dialogue and remove NPC surfs
            # create a new bullet every second
            if self.last_bullet_created + self.boss_bullet_delay <= pygame.time.get_ticks():
                self.last_bullet_created = pygame.time.get_ticks()
                self.bullets.add(boss_bullet.BossBullet(
                    self.screen,
                    self.rect.centerx,
                    self.rect.centery,
                    2,
                    random.randint(-2,2),
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
        if self.active_NPC:
            for i in range(self.maxHealth):
                if i in self.hurtTimes:
                    if self.hurtTimes[i] + 1000 < pygame.time.get_ticks():
                        del self.hurtTimes[i]
                    else:
                        self.screen.blit(
                            self.hurtBlock,
                            [
                                HEALTH_BLOCK_X_OFFSET+HEALTH_BLOCK_WIDTH*i,
                                HEALTH_BLOCK_Y_OFFSET
                            ]
                        )
                elif i <= self.health:
                    self.screen.blit(
                        self.healthBlock,
                        [
                            HEALTH_BLOCK_X_OFFSET+HEALTH_BLOCK_WIDTH*i,
                            HEALTH_BLOCK_Y_OFFSET
                        ]
                    )

    def hurt(self):
        if self.health > 0:
            self.hurtTimes[self.health] = pygame.time.get_ticks()
            self.health -= 1



