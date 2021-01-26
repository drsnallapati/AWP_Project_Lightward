pygame 2.0.1 (SDL 2.0.14, Python 3.9.1)
Hello from the pygame community. https://www.pygame.org/contribute.html
Command line: .\main.py
Total duration: 56.1829s
File: .\main.py
File duration: 24.3427s (43.33%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         0|            0|            0|  0.00%|# import
     2|         2|   0.00100112|   0.00050056|  0.00%|import pygame
(call)|         1|     0.157001|     0.157001|  0.28%|# <frozen importlib._bootstrap>:1002 _find_and_load
     3|         1|            0|            0|  0.00%|from intro import IntroScene
(call)|         1|     0.235964|     0.235964|  0.42%|# <frozen importlib._bootstrap>:1002 _find_and_load
     4|         0|            0|            0|  0.00%|
     5|         1|     0.279005|     0.279005|  0.50%|pygame.init()
     6|         1|            0|            0|  0.00%|pygame.display.set_caption("Lightward")
     7|         1|            0|            0|  0.00%|from pygame.locals import (
     8|         0|            0|            0|  0.00%|    QUIT,
     9|         0|            0|            0|  0.00%|    KEYDOWN,
    10|         0|            0|            0|  0.00%|    K_ESCAPE,
    11|         0|            0|            0|  0.00%|    K_RETURN,
    12|         0|            0|            0|  0.00%|)
    13|         1|            0|            0|  0.00%|from constants import *
    14|         1|            0|            0|  0.00%|from profilehooks import profile
(call)|         1|     0.119448|     0.119448|  0.21%|# <frozen importlib._bootstrap>:1002 _find_and_load
    15|         0|            0|            0|  0.00%|
    16|         2|            0|            0|  0.00%|def main():
    17|         0|            0|            0|  0.00%|    # sets the clock so that you can choose how fast you want to update the game. Also sets a consistent rate
    18|         1|            0|            0|  0.00%|    clock = pygame.time.Clock()
    19|         0|            0|            0|  0.00%|
    20|         0|            0|            0|  0.00%|    # set up the game window
    21|         1|    0.0509408|    0.0509408|  0.09%|    screen = pygame.display.set_mode([SCREEN_WIDTH, SCREEN_HEIGHT])
(call)|         1|      2.37219|      2.37219|  4.22%|# <frozen importlib._bootstrap>:1002 _find_and_load
(call)|         1|   0.00499797|   0.00499797|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\pkgdata.py:46 getResource
    22|         0|            0|            0|  0.00%|
    23|         0|            0|            0|  0.00%|    # instance of the intro scene
    24|         1|            0|            0|  0.00%|    intro_scene = IntroScene(screen)
(call)|         1|        0.263|        0.263|  0.47%|# .\intro.py:9 __init__
    25|         1|            0|            0|  0.00%|    current_scene = intro_scene
    26|         0|            0|            0|  0.00%|
    27|         1|            0|            0|  0.00%|    current_music = current_scene.get_music_file()
(call)|         1|            0|            0|  0.00%|# .\intro.py:72 get_music_file
    28|         1|   0.00300002|   0.00300002|  0.01%|    pygame.mixer.music.load(current_music)
    29|         1|   0.00100017|   0.00100017|  0.00%|    pygame.mixer.music.play(-1)
    30|         0|            0|            0|  0.00%|
    31|         0|            0|            0|  0.00%|    # MAIN LOOP
    32|         1|            0|            0|  0.00%|    running = True
    33|      3121|   0.00316882|  1.01532e-06|  0.01%|    while running:
    34|      3120|    0.0463755|  1.48639e-05|  0.08%|        events = pygame.event.get()
    35|      3358|   0.00702119|  2.09088e-06|  0.01%|        for event in events:
    36|         0|            0|            0|  0.00%|            # checks all the keydown strokes
    37|       238|            0|            0|  0.00%|            if event.type == KEYDOWN:
    38|        93|            0|            0|  0.00%|                if event.key == K_ESCAPE:
    39|         1|            0|            0|  0.00%|                    running = False
    40|       238|            0|            0|  0.00%|            if event.type == QUIT:
    41|         0|            0|            0|  0.00%|                running = False
    42|         0|            0|            0|  0.00%|
    43|         0|            0|            0|  0.00%|        # render the correct scene
    44|      3120|    0.0181594|  5.82032e-06|  0.03%|        current_scene.handle_input(events)
(call)|        34|      0.25569|    0.0075203|  0.46%|# .\intro.py:55 handle_input
(call)|      3086|      11.0242|   0.00357232| 19.62%|# .\level.py:98 handle_input
    45|      3120|    0.0260723|  8.35649e-06|  0.05%|        current_scene.update()
(call)|        34|            0|            0|  0.00%|# .\intro.py:69 update
(call)|      2605|      5.75654|    0.0022098| 10.25%|# .\level_two.py:38 update
(call)|       481|     0.139272|  0.000289547|  0.25%|# .\level_three.py:37 update
    46|      3120|    0.0280616|  8.99411e-06|  0.05%|        current_scene.draw()
(call)|        34|    0.0481856|   0.00141722|  0.09%|# .\intro.py:40 draw
(call)|      3086|      11.4637|   0.00371475| 20.40%|# .\level_two.py:23 draw
    47|         0|            0|            0|  0.00%|
    48|         0|            0|            0|  0.00%|        # render the screen and flip it
    49|      3120|      1.76016|  0.000564154|  3.13%|        pygame.display.flip()
    50|         0|            0|            0|  0.00%|
    51|      3120|    0.0185852|   5.9568e-06|  0.03%|        if current_scene.next_scene:
    52|         2|            0|            0|  0.00%|            next_scene = current_scene.next_scene
    53|         2|            0|            0|  0.00%|            old_scene = current_scene
    54|         2|            0|            0|  0.00%|            current_scene = next_scene
    55|         2|            0|            0|  0.00%|            del old_scene
    56|         2|            0|            0|  0.00%|            if current_music != current_scene.get_music_file():
(call)|         2|            0|            0|  0.00%|# .\level.py:143 get_music_file
    57|         1|            0|            0|  0.00%|                current_music = current_scene.get_music_file()
(call)|         1|            0|            0|  0.00%|# .\level.py:143 get_music_file
    58|         1|            0|            0|  0.00%|                pygame.mixer.music.stop()
    59|         1|            0|            0|  0.00%|                pygame.mixer.music.load(current_music)
    60|         1|            0|            0|  0.00%|                pygame.mixer.music.play(-1)
    61|         0|            0|            0|  0.00%|
    62|         0|            0|            0|  0.00%|
    63|         0|            0|            0|  0.00%|        # Run at most at 60 FPS
    64|      3120|      22.0479|   0.00706665| 39.24%|        clock.tick(60)
    65|         0|            0|            0|  0.00%|
    66|         1|    0.0461926|    0.0461926|  0.08%|    pygame.quit()
    67|         0|            0|            0|  0.00%|
    68|         0|            0|            0|  0.00%|
    69|         1|            0|            0|  0.00%|if __name__ == '__main__':
    70|         1|     0.006001|     0.006001|  0.01%|    main()
(call)|         1|      55.3845|      55.3845| 98.58%|# .\main.py:16 main
File: .\player.py
File duration: 9.77684s (17.40%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|import pygame
     2|         1|            0|            0|  0.00%|import random
     3|         1|            0|            0|  0.00%|from pygame.locals import (
     4|         0|            0|            0|  0.00%|    KEYDOWN,
     5|         0|            0|            0|  0.00%|    K_LEFT,
     6|         0|            0|            0|  0.00%|    K_RIGHT,
     7|         0|            0|            0|  0.00%|    K_SPACE,
     8|         0|            0|            0|  0.00%|    RLEACCEL,
     9|         0|            0|            0|  0.00%|    K_RETURN,
    10|         0|            0|            0|  0.00%|    K_w,
    11|         0|            0|            0|  0.00%|    K_a,
    12|         0|            0|            0|  0.00%|    K_d,
    13|         0|            0|            0|  0.00%|    K_UP,
    14|         0|            0|            0|  0.00%|    K_s
    15|         0|            0|            0|  0.00%|)
    16|         1|            0|            0|  0.00%|from constants import *
(call)|         1|    0.0029881|    0.0029881|  0.01%|# <frozen importlib._bootstrap>:1002 _find_and_load
    17|         1|            0|            0|  0.00%|import boss_bullet
(call)|         1|   0.00301099|   0.00301099|  0.01%|# <frozen importlib._bootstrap>:1002 _find_and_load
    18|         0|            0|            0|  0.00%|
    19|         1|            0|            0|  0.00%|FACING_RIGHT = 0
    20|         1|            0|            0|  0.00%|FACING_LEFT = 1
    21|         0|            0|            0|  0.00%|
    22|         3|            0|            0|  0.00%|class Player(pygame.sprite.Sprite):
(call)|         1|            0|            0|  0.00%|# .\player.py:22 Player
    23|         3|            0|            0|  0.00%|    def __init__(self, screen, impassables, blocks):
    24|         2|            0|            0|  0.00%|        super(Player, self).__init__()
(call)|         2|   0.00104451|  0.000522256|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:112 __init__
    25|         0|            0|            0|  0.00%|        # -- health
    26|         2|            0|            0|  0.00%|        self.health = 6
    27|         2|  0.000997782|  0.000498891|  0.00%|        self.health_sheet = pygame.image.load("health.png").convert_alpha()
    28|         2|            0|            0|  0.00%|        health_size = 40
    29|         2|            0|            0|  0.00%|        self.full_health_surf = pygame.surface.Surface((health_size,health_size))
    30|         2|            0|            0|  0.00%|        self.five_health_surf = pygame.surface.Surface((health_size,health_size))
    31|         2|            0|            0|  0.00%|        self.four_health_surf = pygame.surface.Surface((health_size,health_size))
    32|         2|            0|            0|  0.00%|        self.three_health_surf = pygame.surface.Surface((health_size,health_size))
    33|         2|            0|            0|  0.00%|        self.two_health_surf = pygame.surface.Surface((health_size,health_size))
    34|         2|            0|            0|  0.00%|        self.one_health_surf = pygame.surface.Surface((health_size,health_size))
    35|         2|            0|            0|  0.00%|        self.zero_health_surf = pygame.surface.Surface((health_size,health_size))
    36|         2|            0|            0|  0.00%|        self.health_surfaces = [
    37|         2|            0|            0|  0.00%|            self.zero_health_surf,
    38|         2|            0|            0|  0.00%|            self.one_health_surf,
    39|         2|            0|            0|  0.00%|            self.two_health_surf,
    40|         2|            0|            0|  0.00%|            self.three_health_surf,
    41|         2|            0|            0|  0.00%|            self.four_health_surf,
    42|         2|            0|            0|  0.00%|            self.five_health_surf,
    43|         2|            0|            0|  0.00%|            self.full_health_surf
    44|         0|            0|            0|  0.00%|        ]
    45|         0|            0|            0|  0.00%|
    46|         4|            0|            0|  0.00%|        self.health_rect = self.full_health_surf.get_rect(
    47|         2|            0|            0|  0.00%|                center=(20, Y_BORDER/2)
    48|         0|            0|            0|  0.00%|            )
    49|         0|            0|            0|  0.00%|
    50|         2|            0|            0|  0.00%|        self.full_health_surf.blit(self.health_sheet, (0, 0), (0, 0, health_size, health_size))
    51|         2|  0.000999928|  0.000499964|  0.00%|        self.five_health_surf.blit(self.health_sheet, (0, 0), (45, 0, health_size, health_size))
    52|         2|            0|            0|  0.00%|        self.four_health_surf.blit(self.health_sheet, (0, 0), (96, 0, health_size, health_size))
    53|         2|            0|            0|  0.00%|        self.three_health_surf.blit(self.health_sheet, (0, 0), (147, 0, health_size, health_size))
    54|         2|            0|            0|  0.00%|        self.two_health_surf.blit(self.health_sheet, (0, 0), (0, 48, health_size, health_size))
    55|         2|            0|            0|  0.00%|        self.one_health_surf.blit(self.health_sheet, (0, 0), (45, 48, health_size, health_size))
    56|         2|            0|            0|  0.00%|        self.zero_health_surf.blit(self.health_sheet, (0, 0), (96, 48, health_size, health_size))
    57|         0|            0|            0|  0.00%|
    58|         2|            0|            0|  0.00%|        self.screen = screen
    59|         2|            0|            0|  0.00%|        self.screen_width = screen.get_width()
    60|         2|            0|            0|  0.00%|        self.screen_height = screen.get_height()
    61|         2|  0.000999928|  0.000499964|  0.00%|        self.sprite_sheet = pygame.image.load("sprite_sheet.png").convert_alpha()
    62|         2|            0|            0|  0.00%|        self.player_frame_data = {
    63|         2|            0|            0|  0.00%|            "stand_left" : [32, 32, 32, 32],
    64|         2|            0|            0|  0.00%|            "walk_left" : [64, 32, 32, 32],
    65|         2|            0|            0|  0.00%|            "stand_right" : [32, 64, 32, 32],
    66|         2|            0|            0|  0.00%|            "walk_right" : [64, 64, 32, 32],
    67|         2|            0|            0|  0.00%|            "jump_left" : [0, 32, 32, 32],
    68|         2|            0|            0|  0.00%|            "jump_right" : [0, 64, 32, 32]
    69|         0|            0|            0|  0.00%|        }
    70|         2|            0|            0|  0.00%|        self.player_frames = {}
    71|        14|            0|            0|  0.00%|        for frame_data in self.player_frame_data:
    72|        12|            0|            0|  0.00%|            new_frame = pygame.surface.Surface((32, 32), pygame.SRCALPHA)
    73|        12|            0|            0|  0.00%|            new_frame.blit(self.sprite_sheet, (0,0), self.player_frame_data[frame_data])
    74|        12|            0|            0|  0.00%|            self.player_frames[frame_data] = new_frame
    75|         2|            0|            0|  0.00%|        self.surf = self.player_frames["stand_right"]
    76|         4|            0|            0|  0.00%|        self.rect = self.surf.get_rect(
    77|         2|            0|            0|  0.00%|            topleft=(X_BORDER, self.screen_height - Y_BORDER - self.surf.get_height())
    78|         0|            0|            0|  0.00%|        )
    79|         2|            0|            0|  0.00%|        self.v_velocity = 0
    80|         2|            0|            0|  0.00%|        self.is_jumping = False
    81|         2|            0|            0|  0.00%|        self.impassables = impassables
    82|         2|            0|            0|  0.00%|        self.blocks = blocks
    83|         2|            0|            0|  0.00%|        self.last_gravity_check = 0
    84|         0|            0|            0|  0.00%|
    85|         2|            0|            0|  0.00%|        self.player_bullets = pygame.sprite.Group()
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:629 __init__
    86|         2|            0|            0|  0.00%|        self.last_player_bullet_created = pygame.time.get_ticks()
    87|         2|            0|            0|  0.00%|        self.last_walk_frame = pygame.time.get_ticks()
    88|         2|            0|            0|  0.00%|        self.facing = FACING_RIGHT
    89|         2|            0|            0|  0.00%|        self.frame_counter = 0
    90|         0|            0|            0|  0.00%|
    91|         0|            0|            0|  0.00%|
    92|      6177|   0.00498915|  8.07697e-07|  0.01%|    def check_collide(self):
    93|      6176|    0.0100141|  1.62145e-06|  0.02%|        player_rect = self.rect.copy()
    94|      6176|    0.0120301|  1.94788e-06|  0.02%|        player_rect.left += 4
    95|      6176|     0.013463|  2.17989e-06|  0.02%|        player_rect.width -= 8
    96|      6176|   0.00800204|  1.29567e-06|  0.01%|        player_rect.top += 8
    97|      6176|   0.00715613|   1.1587e-06|  0.01%|        player_rect.height -= 8
    98|      6176|   0.00896668|  1.45186e-06|  0.02%|        returned_impassables = []
    99|   2240584|      4.55441|  2.03269e-06|  8.11%|        for impassable in self.impassables:
(call)|      6176|    0.0809152|  1.31016e-05|  0.14%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
   100|   2234408|      4.83722|  2.16488e-06|  8.61%|            if player_rect.colliderect(impassable.rect):
   101|      1049|   0.00492549|  4.69541e-06|  0.01%|                returned_impassables.append(impassable)
   102|      6176|    0.0110152|  1.78355e-06|  0.02%|        return returned_impassables
   103|         0|            0|            0|  0.00%|
   104|      3087|   0.00100088|  3.24225e-07|  0.00%|    def update(self, pressed_keys):
   105|      3086|   0.00199914|  6.47809e-07|  0.00%|        self.frame_counter += 1
   106|         0|            0|            0|  0.00%|        # moving right
   107|      3086|   0.00104761|  3.39472e-07|  0.00%|        if pressed_keys[K_RIGHT] or pressed_keys[K_d]:
   108|       815|            0|            0|  0.00%|            self.facing = FACING_RIGHT
   109|       815|            0|            0|  0.00%|            if not self.is_jumping:
   110|       401|            0|            0|  0.00%|                if self.surf not in [self.player_frames["stand_right"], self.player_frames["walk_right"]]:
   111|         4|            0|            0|  0.00%|                    self.surf = self.player_frames["stand_right"]
   112|         4|            0|            0|  0.00%|                    self.last_walk_frame = pygame.time.get_ticks()
   113|       397|            0|            0|  0.00%|                elif self.surf == self.player_frames["stand_right"]:
   114|       215|            0|            0|  0.00%|                    if self.last_walk_frame + 500 <= pygame.time.get_ticks():
   115|        17|            0|            0|  0.00%|                        self.last_walk_frame = pygame.time.get_ticks()
   116|        17|            0|            0|  0.00%|                        self.surf = self.player_frames["walk_right"]
   117|       182|            0|            0|  0.00%|                elif self.surf == self.player_frames["walk_right"]:
   118|       182|            0|            0|  0.00%|                    if self.last_walk_frame + 500 <= pygame.time.get_ticks():
   119|         4|            0|            0|  0.00%|                        self.last_walk_frame = pygame.time.get_ticks()
   120|         4|            0|            0|  0.00%|                        self.surf = self.player_frames["stand_right"]
   121|         0|            0|            0|  0.00%|            else:
   122|       414|    0.0010407|  2.51376e-06|  0.00%|                self.surf = self.player_frames["jump_right"]
   123|       815|            0|            0|  0.00%|            self.rect.move_ip(2, 0)
   124|       815|   0.00503302|  6.17548e-06|  0.01%|            block_hit_list = self.check_collide()
(call)|       815|      1.19912|   0.00147131|  2.13%|# .\player.py:92 check_collide
   125|       910|   0.00299525|  3.29149e-06|  0.01%|            for block in block_hit_list:
   126|        95|            0|            0|  0.00%|                self.rect.right = block.rect.left+4
   127|         0|            0|            0|  0.00%|        # moving left
   128|      3086|   0.00402045|   1.3028e-06|  0.01%|        if pressed_keys[K_LEFT] or pressed_keys[K_a]:
   129|      1560|   0.00163937|  1.05088e-06|  0.00%|            self.facing = FACING_LEFT
   130|      1560|  0.000972271|  6.23251e-07|  0.00%|            if not self.is_jumping:
   131|       786|            0|            0|  0.00%|                if self.surf not in [self.player_frames["stand_left"], self.player_frames["walk_left"]]:
   132|         8|            0|            0|  0.00%|                    self.surf = self.player_frames["stand_left"]
   133|         8|            0|            0|  0.00%|                    self.last_walk_frame = pygame.time.get_ticks()
   134|       778|            0|            0|  0.00%|                elif self.surf == self.player_frames["stand_left"]:
   135|       345|            0|            0|  0.00%|                    if self.last_walk_frame + 500 <= pygame.time.get_ticks():
   136|        27|            0|            0|  0.00%|                        self.last_walk_frame = pygame.time.get_ticks()
   137|        27|            0|            0|  0.00%|                        self.surf = self.player_frames["walk_left"]
   138|       433|            0|            0|  0.00%|                elif self.surf == self.player_frames["walk_left"]:
   139|       433|            0|            0|  0.00%|                    if self.last_walk_frame + 500 <= pygame.time.get_ticks():
   140|        11|            0|            0|  0.00%|                        self.last_walk_frame = pygame.time.get_ticks()
   141|        11|            0|            0|  0.00%|                        self.surf = self.player_frames["stand_left"]
   142|         0|            0|            0|  0.00%|            else:
   143|       774|            0|            0|  0.00%|                self.surf = self.player_frames["jump_left"]
   144|      1560|   0.00180459|  1.15679e-06|  0.00%|            self.rect.move_ip(-2, 0)
   145|      1560|    0.0110366|  7.07477e-06|  0.02%|            block_hit_list = self.check_collide()
(call)|      1560|      2.26757|   0.00145357|  4.04%|# .\player.py:92 check_collide
   146|      1710|    0.0059967|  3.50684e-06|  0.01%|            for block in block_hit_list:
   147|       150|   0.00134087|  8.93911e-06|  0.00%|                self.rect.left = block.rect.right-4
   148|         0|            0|            0|  0.00%|        # shooting
   149|      3086|   0.00599885|  1.94389e-06|  0.01%|        if pressed_keys[K_s]:
   150|         0|            0|            0|  0.00%|            # check which direction you're facing and shoot the bullet that direction
   151|       622|  0.000976562|  1.57004e-06|  0.00%|            if self.last_player_bullet_created + 500 <= pygame.time.get_ticks():
   152|        22|            0|            0|  0.00%|                self.last_player_bullet_created = pygame.time.get_ticks()
   153|        22|  0.000946522|  4.30237e-05|  0.00%|                if self.facing == FACING_RIGHT:
   154|         2|            0|            0|  0.00%|                    bullet = boss_bullet.BossBullet(
(call)|         1|  0.000999689|  0.000999689|  0.00%|# .\boss_bullet.py:9 __init__
   155|         1|            0|            0|  0.00%|                        self.screen,
   156|         1|            0|            0|  0.00%|                        self.rect.topright[0]-8,
   157|         1|            0|            0|  0.00%|                        self.rect.topright[1]+10,
   158|         1|            0|            0|  0.00%|                        4,
   159|         1|            0|            0|  0.00%|                        0,
   160|         1|            0|            0|  0.00%|                        self.blocks,
   161|         1|            0|            0|  0.00%|                        boss_bullet.PLAYER
   162|         0|            0|            0|  0.00%|                    )
   163|         0|            0|            0|  0.00%|                else:
   164|        42|            0|            0|  0.00%|                    bullet = boss_bullet.BossBullet(
(call)|        21|   0.00199866|  9.51744e-05|  0.00%|# .\boss_bullet.py:9 __init__
   165|        21|            0|            0|  0.00%|                        self.screen,
   166|        21|            0|            0|  0.00%|                        self.rect.topleft[0]-8,
   167|        21|            0|            0|  0.00%|                        self.rect.topleft[1]+10,
   168|        21|            0|            0|  0.00%|                        -4,
   169|        21|            0|            0|  0.00%|                        0,
   170|        21|            0|            0|  0.00%|                        self.blocks,
   171|        21|            0|            0|  0.00%|                        boss_bullet.PLAYER
   172|         0|            0|            0|  0.00%|                    )
   173|        22|   0.00201321|  9.15094e-05|  0.00%|                self.player_bullets.add(bullet)
(call)|        22|   0.00100064|  4.54838e-05|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:421 add
   174|      3882|    0.0331893|  8.54954e-06|  0.06%|        for bullet in self.player_bullets:
(call)|      3086|    0.0301361|  9.76543e-06|  0.05%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
   175|       796|   0.00303268|   3.8099e-06|  0.01%|            bullet.update()
(call)|       796|      1.20381|   0.00151232|  2.14%|# .\boss_bullet.py:29 update
   176|         0|            0|            0|  0.00%|        # jumping
   177|      3086|    0.0119102|  3.85943e-06|  0.02%|        if pressed_keys[K_SPACE] or pressed_keys[K_w] or pressed_keys[K_UP]:
   178|       604|            0|            0|  0.00%|                if self.v_velocity == 0 and self.is_jumping == False:
   179|        60|            0|            0|  0.00%|                    self.v_velocity = JUMP_VELOCITY
   180|        60|            0|            0|  0.00%|                    self.is_jumping = True
   181|        60|            0|            0|  0.00%|                    if self.surf in [self.player_frames["stand_left"], self.player_frames["walk_left"]]:
   182|        43|            0|            0|  0.00%|                        self.surf = self.player_frames["jump_left"]
   183|         0|            0|            0|  0.00%|                    else:
   184|        17|            0|            0|  0.00%|                        self.surf = self.player_frames["jump_right"]
   185|         0|            0|            0|  0.00%|        #keep the character from going into the map tile blocks
   186|      3086|    0.0099411|  3.22135e-06|  0.02%|        self.rect.move_ip(0, self.v_velocity)
   187|      3086|   0.00696611|  2.25733e-06|  0.01%|        if self.is_jumping == True and self.v_velocity < 0:
   188|       715|   0.00703454|  9.83852e-06|  0.01%|            block_hit_list = self.check_collide()
(call)|       715|      1.11971|   0.00156603|  1.99%|# .\player.py:92 check_collide
   189|       782|   0.00100017|  1.27898e-06|  0.00%|            for block in block_hit_list:
   190|        67|            0|            0|  0.00%|                self.rect.top = block.rect.bottom
   191|        67|            0|            0|  0.00%|                self.v_velocity = 0
   192|         0|            0|            0|  0.00%|        # keeps the character from leaving the screen
   193|      3086|   0.00704169|  2.28182e-06|  0.01%|        if self.last_gravity_check + 2 < self.frame_counter:
   194|      1028|   0.00399828|  3.88938e-06|  0.01%|            self.last_gravity_check = self.frame_counter
   195|      1028|   0.00299668|  2.91506e-06|  0.01%|            self.v_velocity += GRAVITY
   196|      3086|    0.0199461|  6.46341e-06|  0.04%|        block_hit_list = self.check_collide()
(call)|      3086|      4.96671|   0.00160943|  8.84%|# .\player.py:92 check_collide
   197|      3823|   0.00898504|  2.35026e-06|  0.02%|        for block in block_hit_list:
   198|       737|  0.000999451|  1.35611e-06|  0.00%|            if self.is_jumping:
   199|        59|            0|            0|  0.00%|                self.is_jumping = False
   200|        59|   0.00101471|  1.71985e-05|  0.00%|                if self.surf == self.player_frames["jump_left"]:
   201|        40|            0|            0|  0.00%|                    self.surf = self.player_frames["stand_left"]
   202|         0|            0|            0|  0.00%|                else:
   203|        19|            0|            0|  0.00%|                    self.surf = self.player_frames["stand_right"]
   204|       737|   0.00100112|  1.35837e-06|  0.00%|            self.rect.bottom = block.rect.top
   205|       737|   0.00199747|  2.71027e-06|  0.00%|            self.v_velocity = 0
   206|      3086|    0.0109866|  3.56013e-06|  0.02%|        if self.rect.left < 0 + X_BORDER:
   207|         0|            0|            0|  0.00%|            self.rect.left = 0 + X_BORDER
   208|      3086|   0.00899148|  2.91364e-06|  0.02%|        if self.rect.right > self.screen_width - X_BORDER:
   209|         3|            0|            0|  0.00%|            self.rect.right = self.screen_width - X_BORDER
   210|      3086|    0.0130811|  4.23884e-06|  0.02%|        if self.rect.top < 0 + Y_BORDER:
   211|        17|            0|            0|  0.00%|            self.rect.top = 0 + Y_BORDER
   212|      3086|   0.00399137|  1.29338e-06|  0.01%|        if self.rect.bottom > self.screen_height:
   213|         0|            0|            0|  0.00%|            self.rect.bottom = self.screen_height
   214|         0|            0|            0|  0.00%|            self.is_jumping = False
   215|         0|            0|            0|  0.00%|            self.v_velocity = 0
   216|         0|            0|            0|  0.00%|
   217|      3087|    0.0126553|  4.09953e-06|  0.02%|    def draw(self, surf):
   218|      3086|      0.03705|  1.20058e-05|  0.07%|        surf.blit(self.surf, self.rect)
   219|      3860|    0.0218978|    5.673e-06|  0.04%|        for bullet in self.player_bullets:
(call)|      3086|    0.0329151|  1.06659e-05|  0.06%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
   220|       774|   0.00201106|  2.59827e-06|  0.00%|            bullet.draw(surf)
(call)|       774|   0.00701451|  9.06268e-06|  0.01%|# .\boss_bullet.py:23 draw
   221|         0|            0|            0|  0.00%|
   222|      3087|    0.0110395|  3.57612e-06|  0.02%|    def draw_health(self):
   223|         0|            0|            0|  0.00%|        # check which health symbol needs to be drawn and pull that screen
   224|      3086|   0.00902486|  2.92445e-06|  0.02%|        self.screen.blit(self.health_surfaces[self.health], self.health_rect)
File: .\level.py
File duration: 9.45202s (16.82%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|import pygame
     2|         1|            0|            0|  0.00%|from pytmx import load_pygame
(call)|         1|     0.184034|     0.184034|  0.33%|# <frozen importlib._bootstrap>:1002 _find_and_load
(call)|         1|            0|            0|  0.00%|# <frozen importlib._bootstrap>:1033 _handle_fromlist
     3|         0|            0|            0|  0.00%|
     4|         1|            0|            0|  0.00%|from player import Player
     5|         1|            0|            0|  0.00%|from constants import *
     6|         1|            0|            0|  0.00%|from block import Block
(call)|         1|   0.00299811|   0.00299811|  0.01%|# <frozen importlib._bootstrap>:1002 _find_and_load
     7|         0|            0|            0|  0.00%|
     8|         1|            0|            0|  0.00%|from npc import NPC
(call)|         1|   0.00200176|   0.00200176|  0.00%|# <frozen importlib._bootstrap>:1002 _find_and_load
     9|         0|            0|            0|  0.00%|
    10|         0|            0|            0|  0.00%|
    11|         3|            0|            0|  0.00%|class Level:
(call)|         1|            0|            0|  0.00%|# .\level.py:11 Level
    12|         3|            0|            0|  0.00%|    def __init__(self, screen, retry):
    13|         0|            0|            0|  0.00%|        # -- Defining Screen
    14|         2|            0|            0|  0.00%|        self.screen = screen
    15|         2|            0|            0|  0.00%|        self.screen_width = screen.get_width()
    16|         2|            0|            0|  0.00%|        self.screen_height = screen.get_height()
    17|         2|            0|            0|  0.00%|        self.next_scene = None
    18|         0|            0|            0|  0.00%|
    19|         0|            0|            0|  0.00%|        # -- Defining the Game surface
    20|         4|            0|            0|  0.00%|        self.game_surf = pygame.Surface(
    21|         2|            0|            0|  0.00%|            (self.screen_width - X_BORDER * 2, self.screen_height - Y_BORDER)
    22|         0|            0|            0|  0.00%|        )
    23|         0|            0|            0|  0.00%|
    24|         0|            0|            0|  0.00%|        # -- Define retry
    25|         2|            0|            0|  0.00%|        self.retry = retry
    26|         0|            0|            0|  0.00%|
    27|         0|            0|            0|  0.00%|        # -- Defining blocks, NPCs and impassable sprite groups
    28|         2|            0|            0|  0.00%|        self.blocks = pygame.sprite.Group()
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:629 __init__
    29|         2|            0|            0|  0.00%|        self.npcs = pygame.sprite.Group()
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:629 __init__
    30|         2|            0|            0|  0.00%|        self.impassables = pygame.sprite.Group()
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:629 __init__
    31|         2|            0|            0|  0.00%|        self.player = Player(self.screen, self.impassables, self.blocks)
(call)|         2|   0.00404215|   0.00202107|  0.01%|# .\player.py:23 __init__
    32|         2|            0|            0|  0.00%|        self.background, self.background_rect = self.get_background()
(call)|         1|            0|            0|  0.00%|# .\level_two.py:35 get_background
(call)|         1|            0|            0|  0.00%|# .\level_three.py:34 get_background
    33|         0|            0|            0|  0.00%|
    34|         0|            0|            0|  0.00%|        # -- Looping through the level design file and creating the map
    35|         2|            0|            0|  0.00%|        dialog_string_1, dialog_string_2 = self.get_dialog_strings()
(call)|         1|            0|            0|  0.00%|# .\level_two.py:51 get_dialog_strings
(call)|         1|            0|            0|  0.00%|# .\level_three.py:50 get_dialog_strings
    36|        38|            0|            0|  0.00%|        for ycoord, row in enumerate(self.get_level_design().splitlines()):
(call)|         1|            0|            0|  0.00%|# .\level_two.py:32 get_level_design
(call)|         1|            0|            0|  0.00%|# .\level_three.py:31 get_level_design
    37|       854|   0.00200057|  2.34259e-06|  0.00%|            for xcoord, cell in enumerate(row):
    38|       818|   0.00298309|  3.64681e-06|  0.01%|                if cell == "P":
    39|         2|            0|            0|  0.00%|                    self.player.rect.topleft = [X_BORDER + xcoord * 32, Y_BORDER + ycoord * 32]
    40|         0|            0|            0|  0.00%|        # Getting / Importing the map
    41|         2|            0|            0|  0.00%|        tmxdata = load_pygame(self.get_level_tmx())
(call)|         1|            0|            0|  0.00%|# .\level_two.py:48 get_level_tmx
(call)|         2|     0.191566|     0.095783|  0.34%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pytmx\util_pygame.py:120 load_pygame
(call)|         1|            0|            0|  0.00%|# .\level_three.py:47 get_level_tmx
    42|        13|            0|            0|  0.00%|        for layer in tmxdata.visible_layers:
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pytmx\pytmx.py:756 visible_layers
(call)|        13|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pytmx\pytmx.py:762 <genexpr>
    43|      1899|     0.013062|  6.87836e-06|  0.02%|            for item in layer:
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pytmx\pytmx.py:994 __iter__
(call)|      1882|    0.0159645|  8.48274e-06|  0.03%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pytmx\pytmx.py:997 iter_data
    44|      1888|   0.00698876|  3.70168e-06|  0.01%|                if layer.name == "Blocks":
    45|      1880|   0.00503683|  2.67917e-06|  0.01%|                    x, y, gid = item
    46|      1880|    0.0169508|  9.01641e-06|  0.03%|                    tile = tmxdata.get_tile_image_by_gid(gid)
(call)|      1880|     0.018913|  1.00601e-05|  0.03%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pytmx\pytmx.py:541 get_tile_image_by_gid
    47|      1880|   0.00408649|  2.17367e-06|  0.01%|                    if tile:
    48|      1500|    0.0100789|  6.71927e-06|  0.02%|                        block = Block(
(call)|       750|    0.0200088|  2.66784e-05|  0.04%|# .\block.py:6 __init__
    49|       750|   0.00103855|  1.38474e-06|  0.00%|                            X_BORDER + x*tmxdata.tilewidth,
    50|       750|   0.00203872|  2.71829e-06|  0.00%|                            Y_BORDER + y*tmxdata.tileheight,
    51|       750|   0.00099802|  1.33069e-06|  0.00%|                            tile)
    52|       750|   0.00993538|  1.32472e-05|  0.02%|                        self.blocks.add(block)
(call)|       750|    0.0409241|  5.45654e-05|  0.07%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:421 add
    53|       750|   0.00497842|  6.63789e-06|  0.01%|                        self.impassables.add(block)
(call)|       750|    0.0249653|   3.3287e-05|  0.04%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:421 add
    54|      1888|    0.0110669|  5.86171e-06|  0.02%|                if layer.name == "NPCs":
    55|         4|            0|            0|  0.00%|                    npc = NPC(
(call)|         2|   0.00701165|   0.00350583|  0.01%|# .\npc.py:25 __init__
    56|         2|            0|            0|  0.00%|                        X_BORDER + item.x,
    57|         2|            0|            0|  0.00%|                        Y_BORDER + item.y,
    58|         2|            0|            0|  0.00%|                        self.screen,
    59|         2|            0|            0|  0.00%|                        self.player,
    60|         2|            0|            0|  0.00%|                        dialog_string_1,
    61|         2|            0|            0|  0.00%|                        dialog_string_2,
    62|         2|            0|            0|  0.00%|                        self.get_current_level(),
(call)|         1|            0|            0|  0.00%|# .\level_two.py:57 get_current_level
(call)|         1|            0|            0|  0.00%|# .\level_three.py:56 get_current_level
    63|         2|            0|            0|  0.00%|                        self.blocks
    64|         0|            0|            0|  0.00%|                    )
    65|         2|            0|            0|  0.00%|                    self.npcs.add(npc)
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:421 add
    66|         2|            0|            0|  0.00%|                    self.impassables.add(npc)
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:421 add
    67|      1888|   0.00603509|  3.19655e-06|  0.01%|                if layer.name == "Player":
    68|         2|            0|            0|  0.00%|                    if not self.retry:
    69|         2|            0|            0|  0.00%|                        self.player.rect.topleft = [X_BORDER + item.x, Y_BORDER + item.y]
    70|      1888|   0.00699544|  3.70521e-06|  0.01%|                if layer.name == "PlayerRetry":
    71|         2|            0|            0|  0.00%|                    if self.retry:
    72|         0|            0|            0|  0.00%|                        self.player.rect.topleft = [X_BORDER + item.x, Y_BORDER + item.y]
    73|      1888|    0.0030005|  1.58925e-06|  0.01%|                if layer.name == "BossBlock":
    74|         4|            0|            0|  0.00%|                    self.boss_block_rect = pygame.Rect(
    75|         2|            0|            0|  0.00%|                        X_BORDER + item.x,
    76|         2|            0|            0|  0.00%|                        Y_BORDER + item.y,
    77|         2|            0|            0|  0.00%|                        item.width,
    78|         2|            0|            0|  0.00%|                        item.height
    79|         0|            0|            0|  0.00%|                    )
    80|         0|            0|            0|  0.00%|
    81|      3087|   0.00299096|  9.68889e-07|  0.01%|    def draw(self, surf=None):
    82|      3086|   0.00700378|  2.26953e-06|  0.01%|        if not surf:
    83|         0|            0|            0|  0.00%|            surf = self.screen
    84|      3086|      1.53241|  0.000496567|  2.73%|        surf.blit(self.game_surf, (X_BORDER, Y_BORDER))
    85|         0|            0|            0|  0.00%|
    86|      3086|      1.43519|  0.000465066|  2.55%|        surf.blit(self.background,self.background_rect)
    87|         0|            0|            0|  0.00%|        # draw the player
    88|      3086|     0.046155|  1.49562e-05|  0.08%|        self.player.draw(surf)
(call)|      3086|     0.113544|  3.67932e-05|  0.20%|# .\player.py:217 draw
    89|   1117856|      2.55954|  2.28968e-06|  4.56%|        for entity in self.blocks:
(call)|      3086|    0.0409515|  1.32701e-05|  0.07%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
    90|   1114770|      3.44911|  3.09401e-06|  6.14%|            surf.blit(entity.surf, entity.rect)
    91|      4917|    0.0300152|  6.10438e-06|  0.05%|        for entity in self.npcs:
(call)|      3086|    0.0320723|  1.03928e-05|  0.06%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
    92|      1831|    0.0650153|  3.55081e-05|  0.12%|            surf.blit(entity.surf, entity.rect)
    93|         0|            0|            0|  0.00%|            # draws the actual bullets
    94|      4143|    0.0139983|  3.37878e-06|  0.02%|            for bullet in entity.bullets:
(call)|      1831|    0.0201023|  1.09788e-05|  0.04%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
    95|      2312|    0.0129316|  5.59325e-06|  0.02%|                bullet.draw(surf)
(call)|      2312|    0.0219977|  9.51457e-06|  0.04%|# .\boss_bullet.py:23 draw
    96|         0|            0|            0|  0.00%|
    97|         0|            0|            0|  0.00%|
    98|      3087|   0.00162506|  5.26421e-07|  0.00%|    def handle_input(self, pressed_keys):
    99|      3086|   0.00856352|  2.77496e-06|  0.02%|        pressed_keys = pygame.key.get_pressed()
   100|      3086|    0.0149629|  4.84864e-06|  0.03%|        self.player.update(pressed_keys)
(call)|      3086|       10.999|   0.00356417| 19.58%|# .\player.py:104 update
   101|         0|            0|            0|  0.00%|
   102|      3087|   0.00503588|  1.63132e-06|  0.01%|    def update(self):
   103|      4918|    0.0271616|   5.5229e-06|  0.05%|        for entity in self.npcs:
(call)|      3086|    0.0431538|  1.39837e-05|  0.08%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
   104|      1832|    0.0165203|  9.01761e-06|  0.03%|            entity.update()
(call)|      1832|      5.25586|   0.00286892|  9.35%|# .\npc.py:92 update
   105|      4918|    0.0309904|  6.30142e-06|  0.06%|        for npc in self.npcs:
(call)|      3086|    0.0441675|  1.43122e-05|  0.08%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
   106|      1832|    0.0158582|  8.65621e-06|  0.03%|            bullet_collided = pygame.sprite.spritecollideany(self.player, npc.bullets)
(call)|      1832|    0.0639112|   3.4886e-05|  0.11%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:1712 spritecollideany
   107|      1832|    0.0010004|  5.46072e-07|  0.00%|            if bullet_collided:
   108|         1|            0|            0|  0.00%|                self.player.health -= 1
   109|         1|            0|            0|  0.00%|                bullet_collided.kill()
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:183 kill
   110|         1|            0|            0|  0.00%|                if self.player.health < 1:
   111|         0|            0|            0|  0.00%|                    import game_over
   112|         0|            0|            0|  0.00%|                    self.next_scene = game_over.GameOver(self.screen, "We all stumble at some point. Want to try again or take a break?",self.get_current_level())
   113|         0|            0|            0|  0.00%|
   114|      1832|    0.0120623|  6.58423e-06|  0.02%|            player_bullet_collided = pygame.sprite.spritecollideany(npc, self.player.player_bullets)
(call)|      1832|    0.0590696|  3.22432e-05|  0.11%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:1712 spritecollideany
   115|      1832|   0.00594115|  3.24299e-06|  0.01%|            if player_bullet_collided:
   116|        15|            0|            0|  0.00%|                npc.hurt()
(call)|        15|            0|            0|  0.00%|# .\npc.py:154 hurt
   117|        15|            0|            0|  0.00%|                player_bullet_collided.kill()
(call)|        15|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:183 kill
   118|        15|            0|            0|  0.00%|                if npc.health < 1:
   119|         1|            0|            0|  0.00%|                    npc.kill()
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:183 kill
   120|      3086|     0.021224|  6.87752e-06|  0.04%|        if len(self.npcs):
(call)|      3086|    0.0299916|  9.71861e-06|  0.05%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:596 __len__
   121|      1831|   0.00599813|  3.27588e-06|  0.01%|            if self.boss_block_rect.colliderect(self.player.rect):
   122|         0|            0|            0|  0.00%|                if self.boss_block_rect.centerx < self.player.rect.left:
   123|         0|            0|            0|  0.00%|                    self.player.rect.left = self.boss_block_rect.right
   124|         0|            0|            0|  0.00%|                else:
   125|         0|            0|            0|  0.00%|                    self.player.rect.right = self.boss_block_rect.left
   126|         0|            0|            0|  0.00%|
   127|         0|            0|            0|  0.00%|
   128|         1|            0|            0|  0.00%|    def get_level_design(self):
   129|         0|            0|            0|  0.00%|        pass
   130|         0|            0|            0|  0.00%|
   131|         1|            0|            0|  0.00%|    def get_background(self):
   132|         0|            0|            0|  0.00%|        pass
   133|         0|            0|            0|  0.00%|
   134|         1|            0|            0|  0.00%|    def get_level_tmx(self):
   135|         0|            0|            0|  0.00%|        pass
   136|         0|            0|            0|  0.00%|
   137|         1|            0|            0|  0.00%|    def get_dialog_strings(self):
   138|         0|            0|            0|  0.00%|        pass
   139|         0|            0|            0|  0.00%|
   140|         1|            0|            0|  0.00%|    def get_current_level(self):
   141|         0|            0|            0|  0.00%|        pass
   142|         0|            0|            0|  0.00%|
   143|         4|            0|            0|  0.00%|    def get_music_file(self):
   144|         3|            0|            0|  0.00%|        return "Levels.wav"
   145|         0|            0|            0|  0.00%|
   146|      3087|   0.00299215|  9.69275e-07|  0.01%|    def draw_after_clipping(self):
   147|      3086|    0.0204563|  6.62875e-06|  0.04%|        self.player.draw_health()
(call)|      3086|    0.0200644|  6.50173e-06|  0.04%|# .\player.py:222 draw_health
File: .\npc.py
File duration: 1.67707s (2.99%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|""" Represents NPCs in the game world """
     2|         1|            0|            0|  0.00%|import pygame
     3|         1|            0|            0|  0.00%|import random
     4|         1|            0|            0|  0.00%|from pygame.locals import (
     5|         0|            0|            0|  0.00%|    KEYDOWN,
     6|         0|            0|            0|  0.00%|    K_LEFT,
     7|         0|            0|            0|  0.00%|    K_RIGHT,
     8|         0|            0|            0|  0.00%|    K_SPACE,
     9|         0|            0|            0|  0.00%|    RLEACCEL,
    10|         0|            0|            0|  0.00%|    K_RETURN,
    11|         0|            0|            0|  0.00%|    K_w,
    12|         0|            0|            0|  0.00%|    K_a,
    13|         0|            0|            0|  0.00%|    K_d,
    14|         0|            0|            0|  0.00%|    K_UP,
    15|         0|            0|            0|  0.00%|)
    16|         1|            0|            0|  0.00%|from constants import *
    17|         1|            0|            0|  0.00%|import boss_bullet
    18|         0|            0|            0|  0.00%|
    19|         1|            0|            0|  0.00%|HEALTH_BLOCK_WIDTH = 24
    20|         1|            0|            0|  0.00%|HEALTH_BLOCK_HEIGHT = 16
    21|         1|            0|            0|  0.00%|HEALTH_BLOCK_Y_OFFSET = 24
    22|         1|            0|            0|  0.00%|HEALTH_BLOCK_X_OFFSET = 32
    23|         0|            0|            0|  0.00%|
    24|         3|            0|            0|  0.00%|class NPC(pygame.sprite.Sprite):
(call)|         1|            0|            0|  0.00%|# .\npc.py:24 NPC
    25|         3|            0|            0|  0.00%|    def __init__(self, x, y, screen, player, dialog_first, dialog_second, current_scene, blocks):
    26|         2|            0|            0|  0.00%|        super(NPC, self).__init__()
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:112 __init__
    27|         2|            0|            0|  0.00%|        self.screen = screen
    28|         2|            0|            0|  0.00%|        self.player = player
    29|         2|            0|            0|  0.00%|        self.screen_width = screen.get_width()
    30|         2|            0|            0|  0.00%|        self.screen_height = screen.get_height()
    31|         2|            0|            0|  0.00%|        self.current_scene = current_scene
    32|         0|            0|            0|  0.00%|
    33|         2|   0.00298595|   0.00149298|  0.01%|        self.npcs = pygame.image.load("Bigger_bosses.png").convert_alpha()
    34|         2|            0|            0|  0.00%|        self.surf = None
    35|         2|            0|            0|  0.00%|        if current_scene == 1:
    36|         0|            0|            0|  0.00%|            self.surf = pygame.surface.Surface((88, 110), pygame.SRCALPHA)
    37|         0|            0|            0|  0.00%|            self.surf.blit(self.npcs, (0, 0), (0, 0, 88, 110))
    38|         0|            0|            0|  0.00%|            self.health = 10
    39|         0|            0|            0|  0.00%|            self.maxHealth = 10
    40|         2|            0|            0|  0.00%|        if current_scene == 2:
    41|         1|            0|            0|  0.00%|            self.surf = pygame.surface.Surface((128,110), pygame.SRCALPHA)
    42|         1|            0|            0|  0.00%|            self.surf.blit(self.npcs, (0, 0), (88, 0, 128, 110))
    43|         1|            0|            0|  0.00%|            self.health = 15
    44|         1|            0|            0|  0.00%|            self.maxHealth = 15
    45|         2|            0|            0|  0.00%|        if current_scene == 3:
    46|         1|            0|            0|  0.00%|            self.surf = pygame.surface.Surface((95,110), pygame.SRCALPHA)
    47|         1|            0|            0|  0.00%|            self.surf.blit(self.npcs, (0, 0), (220, 0, 95, 110))
    48|         1|            0|            0|  0.00%|            self.health = 20
    49|         1|            0|            0|  0.00%|            self.maxHealth = 20
    50|         0|            0|            0|  0.00%|        # self.surf.set_colorkey((0, 0, 0), RLEACCEL)
    51|         2|            0|            0|  0.00%|        self.rect = self.surf.get_rect(topleft=[x, y])
    52|         0|            0|            0|  0.00%|
    53|         0|            0|            0|  0.00%|        # --- dialogue box---
    54|         2|            0|            0|  0.00%|        self.font = pygame.font.SysFont("monospace", 20)
(call)|         2|   0.00102639|  0.000513196|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sysfont.py:344 SysFont
    55|         2|   0.00199986|  0.000999928|  0.00%|        self.dialogue1_text = self.font.render(dialog_first, True, pygame.Color("white"), pygame.Color("black"))
    56|         4|            0|            0|  0.00%|        self.dialogue1_textRect = self.dialogue1_text.get_rect(
    57|         2|            0|            0|  0.00%|            center=[self.screen_width / 2, (self.screen_height) / 2]
    58|         0|            0|            0|  0.00%|        )
    59|         2|  0.000999451|  0.000499725|  0.00%|        self.dialogue2_text = self.font.render(dialog_second, True, pygame.Color("white"), pygame.Color("black"))
    60|         4|            0|            0|  0.00%|        self.dialogue2_textRect = self.dialogue2_text.get_rect(
    61|         2|            0|            0|  0.00%|            center=[self.screen_width / 2, ((self.screen_height/2) + (self.dialogue1_text.get_height()+14))]
    62|         0|            0|            0|  0.00%|        )
    63|         0|            0|            0|  0.00%|
    64|         2|            0|            0|  0.00%|        self.active_NPC = False
    65|         2|            0|            0|  0.00%|        self.show_dialogue = False
    66|         2|            0|            0|  0.00%|        self.dialogue_activation_rect = self.rect.copy()
    67|         0|            0|            0|  0.00%|        #making the dialogue show up a little bit before you get to the enemy
    68|         2|            0|            0|  0.00%|        self.dialogue_activation_rect.width *= 5
    69|         2|            0|            0|  0.00%|        self.dialogue_activation_rect.left -= self.surf.get_width()/2
    70|         0|            0|            0|  0.00%|
    71|         2|            0|            0|  0.00%|        self.bullets = pygame.sprite.Group()
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:629 __init__
    72|         2|            0|            0|  0.00%|        self.last_bullet_created = pygame.time.get_ticks()
    73|         2|            0|            0|  0.00%|        self.speed = 1
    74|         2|            0|            0|  0.00%|        if self.current_scene == 2:
    75|         1|            0|            0|  0.00%|            self.speed = 2
    76|         2|            0|            0|  0.00%|        if self.current_scene == 3:
    77|         1|            0|            0|  0.00%|            self.speed = 3
    78|         2|            0|            0|  0.00%|        self.blocks = blocks
    79|         0|            0|            0|  0.00%|
    80|         2|            0|            0|  0.00%|        self.healthBlock = pygame.surface.Surface([HEALTH_BLOCK_WIDTH, HEALTH_BLOCK_HEIGHT])
    81|         2|            0|            0|  0.00%|        self.healthBlock.fill(pygame.Color("Purple"))
    82|         2|            0|            0|  0.00%|        self.hurtBlock = pygame.surface.Surface([HEALTH_BLOCK_WIDTH, HEALTH_BLOCK_HEIGHT])
    83|         2|            0|            0|  0.00%|        self.hurtBlock.fill(pygame.Color("Yellow"))
    84|         2|            0|            0|  0.00%|        self.hurtTimes = {}
    85|         2|            0|            0|  0.00%|        self.boss_bullet_delay = 500
    86|         2|            0|            0|  0.00%|        if self.current_scene == 2:
    87|         1|            0|            0|  0.00%|            self.boss_bullet_delay = 400
    88|         2|            0|            0|  0.00%|        if self.current_scene == 3:
    89|         1|            0|            0|  0.00%|            self.boss_bullet_delay = 200
    90|         0|            0|            0|  0.00%|
    91|         0|            0|            0|  0.00%|
    92|      1833|   0.00402904|  2.19806e-06|  0.01%|    def update(self):
    93|      1832|   0.00900245|    4.914e-06|  0.02%|        if self.dialogue_activation_rect.colliderect(self.player.rect) and self.active_NPC == False:
    94|         1|            0|            0|  0.00%|            self.active_NPC = True
    95|         1|            0|            0|  0.00%|            self.show_dialogue = True
    96|         1|            0|            0|  0.00%|            self.start_ticks = pygame.time.get_ticks() #starter tick
    97|      1832|   0.00493431|   2.6934e-06|  0.01%|        if self.active_NPC:
    98|       802|            0|            0|  0.00%|            seconds = (pygame.time.get_ticks()-self.start_ticks)/1000 #calculate how many seconds
    99|       802|   0.00099802|  1.24441e-06|  0.00%|            if seconds > 10: #if more than 10 seconds close the game
   100|       225|            0|            0|  0.00%|                self.show_dialogue = False #remove dialogue and remove NPC surfs
   101|         0|            0|            0|  0.00%|            # create a new bullet every second
   102|       802|   0.00398898|  4.97379e-06|  0.01%|            if self.last_bullet_created + self.boss_bullet_delay <= pygame.time.get_ticks():
   103|        34|            0|            0|  0.00%|                self.last_bullet_created = pygame.time.get_ticks()
   104|        68|   0.00100207|  1.47364e-05|  0.00%|                self.bullets.add(boss_bullet.BossBullet(
(call)|        34|   0.00802827|  0.000236126|  0.01%|# .\boss_bullet.py:9 __init__
(call)|        34|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:421 add
   105|        34|            0|            0|  0.00%|                    self.screen,
   106|        34|            0|            0|  0.00%|                    self.rect.centerx,
   107|        34|            0|            0|  0.00%|                    self.rect.centery,
   108|        34|            0|            0|  0.00%|                    2,
   109|        34|   0.00099659|  2.93115e-05|  0.00%|                    random.randint(-2,2),
(call)|        34|   0.00198698|  5.84406e-05|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\random.py:334 randint
   110|        34|            0|            0|  0.00%|                    self.blocks)
   111|         0|            0|            0|  0.00%|                )
   112|         0|            0|            0|  0.00%|
   113|       802|   0.00199509|  2.48764e-06|  0.00%|            self.rect.move_ip(0, self.speed)
   114|       802|   0.00198674|  2.47723e-06|  0.00%|            if self.speed > 0:
   115|    135280|     0.298117|   2.2037e-06|  0.53%|                for block in self.blocks:
(call)|       380|   0.00895834|  2.35746e-05|  0.02%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
   116|    134900|      0.33176|   2.4593e-06|  0.59%|                    if self.rect.colliderect(block.rect):
   117|         6|            0|            0|  0.00%|                        self.rect.bottom = block.rect.top
   118|         6|            0|            0|  0.00%|                        self.speed = -self.speed
   119|         0|            0|            0|  0.00%|            else:
   120|    150232|     0.362048|  2.40993e-06|  0.64%|                for block in self.blocks:
(call)|       422|   0.00099802|  2.36498e-06|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
   121|    149810|     0.348941|  2.32923e-06|  0.62%|                    if self.rect.colliderect(block.rect):
   122|         5|            0|            0|  0.00%|                        self.rect.top = block.rect.bottom
   123|         5|            0|            0|  0.00%|                        self.speed = -self.speed
   124|      4178|    0.0249727|  5.97718e-06|  0.04%|        for bullet in self.bullets:
(call)|      1832|    0.0259607|  1.41707e-05|  0.05%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
   125|      2346|    0.0169704|  7.23376e-06|  0.03%|            bullet.update()
(call)|      2346|      3.79818|     0.001619|  6.76%|# .\boss_bullet.py:29 update
   126|         0|            0|            0|  0.00%|
   127|      1832|   0.00299287|  1.63366e-06|  0.01%|    def draw_after_clipping(self):
   128|      1831|   0.00404978|  2.21178e-06|  0.01%|        if self.show_dialogue == True:
   129|       577|   0.00502968|  8.71695e-06|  0.01%|            self.screen.blit(self.dialogue1_text,self.dialogue1_textRect)
   130|       577|    0.0019598|  3.39654e-06|  0.00%|            self.screen.blit(self.dialogue2_text,self.dialogue2_textRect)
   131|       577|   0.00902605|  1.56431e-05|  0.02%|            self.screen.blit(self.surf,self.rect)
   132|      1831|   0.00498796|  2.72417e-06|  0.01%|        if self.active_NPC:
   133|     12816|    0.0351138|  2.73984e-06|  0.06%|            for i in range(self.maxHealth):
   134|     12015|    0.0159764|  1.32971e-06|  0.03%|                if i in self.hurtTimes:
   135|       747|   0.00399971|  5.35436e-06|  0.01%|                    if self.hurtTimes[i] + 1000 < pygame.time.get_ticks():
   136|        11|            0|            0|  0.00%|                        del self.hurtTimes[i]
   137|         0|            0|            0|  0.00%|                    else:
   138|      1472|     0.002002|  1.36005e-06|  0.00%|                        self.screen.blit(
   139|       736|   0.00198698|   2.6997e-06|  0.00%|                            self.hurtBlock,
   140|       736|            0|            0|  0.00%|                            [
   141|       736|   0.00300121|  4.07774e-06|  0.01%|                                HEALTH_BLOCK_X_OFFSET+HEALTH_BLOCK_WIDTH*i,
   142|       736|   0.00100064|  1.35957e-06|  0.00%|                                HEALTH_BLOCK_Y_OFFSET
   143|         0|            0|            0|  0.00%|                            ]
   144|         0|            0|            0|  0.00%|                        )
   145|     11268|    0.0281305|   2.4965e-06|  0.05%|                elif i <= self.health:
   146|     18442|    0.0449719|  2.43856e-06|  0.08%|                    self.screen.blit(
   147|      9221|    0.0210176|  2.27931e-06|  0.04%|                        self.healthBlock,
   148|      9221|    0.0241141|  2.61513e-06|  0.04%|                        [
   149|      9221|    0.0339653|  3.68348e-06|  0.06%|                            HEALTH_BLOCK_X_OFFSET+HEALTH_BLOCK_WIDTH*i,
   150|      9221|    0.0160174|  1.73706e-06|  0.03%|                            HEALTH_BLOCK_Y_OFFSET
   151|         0|            0|            0|  0.00%|                        ]
   152|         0|            0|            0|  0.00%|                    )
   153|         0|            0|            0|  0.00%|
   154|        16|            0|            0|  0.00%|    def hurt(self):
   155|        15|            0|            0|  0.00%|        if self.health > 0:
   156|        15|            0|            0|  0.00%|            self.hurtTimes[self.health] = pygame.time.get_ticks()
   157|        15|            0|            0|  0.00%|            self.health -= 1
   158|         0|            0|            0|  0.00%|
   159|         0|            0|            0|  0.00%|
   160|         0|            0|            0|  0.00%|
File: .\level_two.py
File duration: 1.53127s (2.73%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|import pygame
     2|         1|            0|            0|  0.00%|from player import Player
     3|         1|            0|            0|  0.00%|from constants import *
     4|         1|            0|            0|  0.00%|from level_2_design import level_2_design
(call)|         1|   0.00400043|   0.00400043|  0.01%|# <frozen importlib._bootstrap>:1002 _find_and_load
     5|         1|            0|            0|  0.00%|import level
     6|         1|   0.00100136|   0.00100136|  0.00%|import level_three
(call)|         1|    0.0140009|    0.0140009|  0.02%|# <frozen importlib._bootstrap>:1002 _find_and_load
     7|         0|            0|            0|  0.00%|
     8|         3|            0|            0|  0.00%|class LevelTwo(level.Level):
(call)|         1|            0|            0|  0.00%|# .\level_two.py:8 LevelTwo
     9|         2|            0|            0|  0.00%|    def __init__(self, screen,retry=False):
    10|         1|            0|            0|  0.00%|        self.level_design = level_2_design
    11|         0|            0|            0|  0.00%|
    12|         0|            0|            0|  0.00%|        # -- Background
    13|         1|    0.0180447|    0.0180447|  0.03%|        self.level_2_background = pygame.image.load("level_2_backround.png").convert()
    14|         1|            0|            0|  0.00%|        self.level_2_background_rect = self.level_2_background.get_rect(topleft=[X_BORDER,Y_BORDER])
    15|         0|            0|            0|  0.00%|
    16|         1|            0|            0|  0.00%|        super().__init__(screen, retry)
(call)|         1|     0.236644|     0.236644|  0.42%|# .\level.py:12 __init__
    17|         0|            0|            0|  0.00%|        # sets the circle that'll be around the character
    18|         0|            0|            0|  0.00%|        #-- Exit Block
    19|         1|            0|            0|  0.00%|        self.exit_block = pygame.image.load("exit.png")
    20|         1|            0|            0|  0.00%|        self.exit_block_rect = self.exit_block.get_rect(topleft=[X_BORDER, Y_BORDER])
    21|         1|   0.00100136|   0.00100136|  0.00%|        self.surf = pygame.surface.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))
    22|         0|            0|            0|  0.00%|
    23|      2606|   0.00799179|  3.06669e-06|  0.01%|    def draw(self):
    24|         0|            0|            0|  0.00%|        #since we set this in level, can we delete this as it defaults to self.screen?
    25|      2605|    0.0240722|  9.24076e-06|  0.04%|        super().draw(self.surf)
(call)|      2605|      7.90468|   0.00303443| 14.07%|# .\level.py:81 draw
    26|         0|            0|            0|  0.00%|        #draw the exit image
    27|      2605|      1.31351|  0.000504226|  2.34%|        self.screen.blit(self.surf, (0,0))
    28|      2605|    0.0519397|  1.99385e-05|  0.09%|        self.screen.blit(self.exit_block, self.exit_block_rect)
    29|      2605|    0.0168984|  6.48691e-06|  0.03%|        self.draw_after_clipping()
(call)|      2605|     0.400807|  0.000153861|  0.71%|# .\level_two.py:43 draw_after_clipping
    30|         0|            0|            0|  0.00%|
    31|         0|            0|            0|  0.00%|    #get the correct level design
    32|         2|            0|            0|  0.00%|    def get_level_design(self):
    33|         1|            0|            0|  0.00%|        return self.level_design
    34|         0|            0|            0|  0.00%|
    35|         2|            0|            0|  0.00%|    def get_background(self):
    36|         1|            0|            0|  0.00%|        return [self.level_2_background, self.level_2_background_rect]
    37|         0|            0|            0|  0.00%|
    38|      2606|   0.00402856|  1.54588e-06|  0.01%|    def update(self):
    39|      2605|    0.0216577|   8.3139e-06|  0.04%|        super().update()
(call)|      2605|      5.51181|   0.00211586|  9.81%|# .\level.py:102 update
    40|      2605|   0.00606036|  2.32643e-06|  0.01%|        if self.player.rect.colliderect(self.exit_block_rect):
    41|         1|            0|            0|  0.00%|            self.next_scene = level_three.LevelThree(self.screen)
(call)|         1|     0.212982|     0.212982|  0.38%|# .\level_three.py:9 __init__
    42|         0|            0|            0|  0.00%|
    43|      2606|   0.00591612|  2.27019e-06|  0.01%|    def draw_after_clipping(self):
    44|      2605|     0.022016|  8.45146e-06|  0.04%|        super().draw_after_clipping()
(call)|      2605|    0.0374632|  1.43813e-05|  0.07%|# .\level.py:146 draw_after_clipping
    45|      3955|    0.0281329|  7.11325e-06|  0.05%|        for entity in self.npcs:
(call)|      2605|    0.0419428|  1.61009e-05|  0.07%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
    46|      1350|   0.00899601|  6.66371e-06|  0.02%|            entity.draw_after_clipping()
(call)|      1350|      0.25634|  0.000189882|  0.46%|# .\npc.py:127 draw_after_clipping
    47|         0|            0|            0|  0.00%|
    48|         2|            0|            0|  0.00%|    def get_level_tmx(self):
    49|         1|            0|            0|  0.00%|        return "level2.tmx"
    50|         0|            0|            0|  0.00%|
    51|         2|            0|            0|  0.00%|    def get_dialog_strings(self):
    52|         1|            0|            0|  0.00%|        return [
    53|         1|            0|            0|  0.00%|            "How did you get this far??",
    54|         1|            0|            0|  0.00%|            "Turn back! You're not strong enough!"
    55|         0|            0|            0|  0.00%|        ]
    56|         0|            0|            0|  0.00%|
    57|         2|            0|            0|  0.00%|    def get_current_level(self):
    58|         1|            0|            0|  0.00%|        return 2
File: .\level_three.py
File duration: 0.280579s (0.50%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|import pygame
     2|         1|            0|            0|  0.00%|from player import Player
     3|         1|            0|            0|  0.00%|from constants import *
     4|         1|            0|            0|  0.00%|from level_3_design import level_3_design
(call)|         1|   0.00503469|   0.00503469|  0.01%|# <frozen importlib._bootstrap>:1002 _find_and_load
     5|         1|            0|            0|  0.00%|import level
     6|         1|            0|            0|  0.00%|import game_over
(call)|         1|   0.00296354|   0.00296354|  0.01%|# <frozen importlib._bootstrap>:1002 _find_and_load
     7|         0|            0|            0|  0.00%|
     8|         3|            0|            0|  0.00%|class LevelThree(level.Level):
(call)|         1|            0|            0|  0.00%|# .\level_three.py:8 LevelThree
     9|         2|            0|            0|  0.00%|    def __init__(self, screen,retry=False):
    10|         1|            0|            0|  0.00%|        self.level_design = level_3_design
    11|         0|            0|            0|  0.00%|
    12|         0|            0|            0|  0.00%|        # -- Background
    13|         1|    0.0179563|    0.0179563|  0.03%|        self.level_3_background = pygame.image.load("level_3_backround.png").convert()
    14|         1|            0|            0|  0.00%|        self.level_3_background_rect = self.level_3_background.get_rect(topleft=[X_BORDER,Y_BORDER])
    15|         0|            0|            0|  0.00%|
    16|         1|            0|            0|  0.00%|        super(LevelThree, self).__init__(screen, retry)
(call)|         1|     0.194026|     0.194026|  0.35%|# .\level.py:12 __init__
    17|         0|            0|            0|  0.00%|        # sets the circle that'll be around the character
    18|         0|            0|            0|  0.00%|        #-- Exit Block
    19|         1|            0|            0|  0.00%|        self.exit_block = pygame.image.load("exit.png")
    20|         1|            0|            0|  0.00%|        self.exit_block_rect = self.exit_block.get_rect(topleft=[X_BORDER, Y_BORDER])
    21|         1|   0.00100017|   0.00100017|  0.00%|        self.surf = pygame.surface.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))
    22|         0|            0|            0|  0.00%|
    23|       482|   0.00205708|  4.26779e-06|  0.00%|    def draw(self):
    24|       481|   0.00400066|  8.31739e-06|  0.01%|        super().draw(self.surf)
(call)|       481|      1.47834|   0.00307348|  2.63%|# .\level.py:81 draw
    25|         0|            0|            0|  0.00%|        #draw the exit image
    26|       481|     0.215398|  0.000447813|  0.38%|        self.screen.blit(self.surf, (0,0))
    27|       481|   0.00995564|  2.06978e-05|  0.02%|        self.screen.blit(self.exit_block, self.exit_block_rect)
    28|       481|   0.00302768|  6.29455e-06|  0.01%|        self.draw_after_clipping()
(call)|       481|      0.03105|  6.45529e-05|  0.06%|# .\level_three.py:42 draw_after_clipping
    29|         0|            0|            0|  0.00%|
    30|         0|            0|            0|  0.00%|    #get the correct level design
    31|         2|            0|            0|  0.00%|    def get_level_design(self):
    32|         1|            0|            0|  0.00%|        return self.level_design
    33|         0|            0|            0|  0.00%|
    34|         2|            0|            0|  0.00%|    def get_background(self):
    35|         1|            0|            0|  0.00%|        return [self.level_3_background, self.level_3_background_rect]
    36|         0|            0|            0|  0.00%|
    37|       482|   0.00203824|  4.22871e-06|  0.00%|    def update(self):
    38|       481|     0.010098|  2.09937e-05|  0.02%|        super().update()
(call)|       481|     0.126132|  0.000262228|  0.22%|# .\level.py:102 update
    39|       481|   0.00100398|  2.08728e-06|  0.00%|        if self.player.rect.colliderect(self.exit_block_rect):
    40|         0|            0|            0|  0.00%|            self.next_scene = game_over.GameOver(self.screen)
    41|         0|            0|            0|  0.00%|
    42|       482|   0.00100088|  2.07652e-06|  0.00%|    def draw_after_clipping(self):
    43|       481|   0.00399351|  8.30252e-06|  0.01%|        super().draw_after_clipping()
(call)|       481|   0.00604963|  1.25772e-05|  0.01%|# .\level.py:146 draw_after_clipping
    44|       962|   0.00595069|  6.18575e-06|  0.01%|        for entity in self.npcs:
(call)|       481|   0.00795341|  1.65351e-05|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:415 __iter__
    45|       481|   0.00309801|  6.44077e-06|  0.01%|            entity.draw_after_clipping()
(call)|       481|   0.00300384|  6.24498e-06|  0.01%|# .\npc.py:127 draw_after_clipping
    46|         0|            0|            0|  0.00%|
    47|         2|            0|            0|  0.00%|    def get_level_tmx(self):
    48|         1|            0|            0|  0.00%|        return "level3.tmx"
    49|         0|            0|            0|  0.00%|
    50|         2|            0|            0|  0.00%|    def get_dialog_strings(self):
    51|         1|            0|            0|  0.00%|        return [
    52|         1|            0|            0|  0.00%|            "We all end up in a dark place sometimes",
    53|         1|            0|            0|  0.00%|            "Remember what you did here...for it was not easy"
    54|         0|            0|            0|  0.00%|        ]
    55|         0|            0|            0|  0.00%|
    56|         2|            0|            0|  0.00%|    def get_current_level(self):
    57|         1|            0|            0|  0.00%|        return 3
File: <frozen importlib._bootstrap_external>
File duration: 0.276701s (0.49%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         0|            0|            0|  0.00%|
     2|         0|            0|            0|  0.00%|
     3|         0|            0|            0|  0.00%|
     4|         0|            0|            0|  0.00%|
     5|         0|            0|            0|  0.00%|
     6|         0|            0|            0|  0.00%|
     7|         0|            0|            0|  0.00%|
     8|         0|            0|            0|  0.00%|
     9|         0|            0|            0|  0.00%|
    10|         0|            0|            0|  0.00%|
    11|         0|            0|            0|  0.00%|
    12|         0|            0|            0|  0.00%|
    13|         0|            0|            0|  0.00%|
    14|         0|            0|            0|  0.00%|
    15|         0|            0|            0|  0.00%|
    16|         0|            0|            0|  0.00%|
    17|         0|            0|            0|  0.00%|
    18|         0|            0|            0|  0.00%|
    19|         0|            0|            0|  0.00%|
    20|         0|            0|            0|  0.00%|
    21|         0|            0|            0|  0.00%|
    22|         0|            0|            0|  0.00%|
    23|         0|            0|            0|  0.00%|
    24|         0|            0|            0|  0.00%|
    25|         0|            0|            0|  0.00%|
    26|         0|            0|            0|  0.00%|
    27|         0|            0|            0|  0.00%|
    28|         0|            0|            0|  0.00%|
    29|         0|            0|            0|  0.00%|
    30|         0|            0|            0|  0.00%|
    31|         0|            0|            0|  0.00%|
    32|         0|            0|            0|  0.00%|
    33|         0|            0|            0|  0.00%|
    34|         0|            0|            0|  0.00%|
    35|         0|            0|            0|  0.00%|
    36|       254|   0.00100017|  3.93766e-06|  0.00%|
    37|         0|            0|            0|  0.00%|
    38|       254|   0.00198698|  7.82276e-06|  0.00%|
    39|         0|            0|            0|  0.00%|
    40|         0|            0|            0|  0.00%|
    41|         0|            0|            0|  0.00%|
    42|         0|            0|            0|  0.00%|
    43|         0|            0|            0|  0.00%|
    44|         0|            0|            0|  0.00%|
    45|         0|            0|            0|  0.00%|
    46|         9|            0|            0|  0.00%|
    47|         0|            0|            0|  0.00%|
    48|         9|            0|            0|  0.00%|
    49|         0|            0|            0|  0.00%|
    50|         0|            0|            0|  0.00%|
    51|       252|   0.00199962|  7.93499e-06|  0.00%|
    52|         0|            0|            0|  0.00%|
    53|       252|   0.00198412|  7.87349e-06|  0.00%|
    54|       252|            0|            0|  0.00%|
    55|         0|            0|            0|  0.00%|
    56|         0|            0|            0|  0.00%|
    57|         0|            0|            0|  0.00%|
    58|         0|            0|            0|  0.00%|
    59|         0|            0|            0|  0.00%|
    60|         0|            0|            0|  0.00%|
    61|         0|            0|            0|  0.00%|
    62|      1168|   0.00199986|   1.7122e-06|  0.00%|
    63|         0|            0|            0|  0.00%|
    64|      9684|     0.035135|  3.62815e-06|  0.06%|
(call)|      1168|    0.0210834|  1.80508e-05|  0.04%|# <frozen importlib._bootstrap_external>:64 <listcomp>
    65|      1168|   0.00399947|  3.42421e-06|  0.01%|
    66|         0|            0|            0|  0.00%|
    67|         0|            0|            0|  0.00%|
    68|       173|            0|            0|  0.00%|
    69|         0|            0|            0|  0.00%|
    70|       173|            0|            0|  0.00%|
    71|         0|            0|            0|  0.00%|
    72|         0|            0|            0|  0.00%|
    73|      2115|   0.00701213|  3.31543e-06|  0.01%|
    74|      2115|    0.0120096|  5.67831e-06|  0.02%|
    75|       173|  0.000998974|  5.77442e-06|  0.00%|
    76|       173|            0|            0|  0.00%|
    77|         0|            0|            0|  0.00%|
    78|         0|            0|            0|  0.00%|
    79|         0|            0|            0|  0.00%|
    80|       515|  0.000964403|  1.87263e-06|  0.00%|
    81|         0|            0|            0|  0.00%|
    82|         0|            0|            0|  0.00%|
    83|         0|            0|            0|  0.00%|
    84|         0|            0|            0|  0.00%|
    85|         0|            0|            0|  0.00%|
    86|         0|            0|            0|  0.00%|
    87|       515|    0.0318992|  6.19402e-05|  0.06%|
    88|         0|            0|            0|  0.00%|
    89|         0|            0|            0|  0.00%|
    90|       161|    0.0019598|  1.21727e-05|  0.00%|
    91|         0|            0|            0|  0.00%|
    92|       161|   0.00199771|  1.24081e-05|  0.00%|
    93|       161|   0.00203443|  1.26362e-05|  0.00%|
(call)|       161|    0.0100088|  6.21665e-05|  0.02%|# <frozen importlib._bootstrap_external>:80 _path_stat
    94|        29|  0.000993967|  3.42747e-05|  0.00%|
    95|        29|            0|            0|  0.00%|
    96|       132|            0|            0|  0.00%|
    97|         0|            0|            0|  0.00%|
    98|         0|            0|            0|  0.00%|
    99|       145|            0|            0|  0.00%|
   100|         0|            0|            0|  0.00%|
   101|       145|            0|            0|  0.00%|
(call)|       145|    0.0140083|  9.66089e-05|  0.02%|# <frozen importlib._bootstrap_external>:90 _path_is_mode_type
   102|         0|            0|            0|  0.00%|
   103|         0|            0|            0|  0.00%|
   104|        16|            0|            0|  0.00%|
   105|         0|            0|            0|  0.00%|
   106|        16|            0|            0|  0.00%|
   107|         0|            0|            0|  0.00%|
   108|        16|            0|            0|  0.00%|
(call)|        16|   0.00298643|  0.000186652|  0.01%|# <frozen importlib._bootstrap_external>:90 _path_is_mode_type
   109|         0|            0|            0|  0.00%|
   110|         0|            0|            0|  0.00%|
   111|         0|            0|            0|  0.00%|
   112|         0|            0|            0|  0.00%|
   113|         0|            0|            0|  0.00%|
   114|         0|            0|            0|  0.00%|
   115|         0|            0|            0|  0.00%|
   116|         0|            0|            0|  0.00%|
   117|         0|            0|            0|  0.00%|
   118|         0|            0|            0|  0.00%|
   119|         0|            0|            0|  0.00%|
   120|         3|            0|            0|  0.00%|
   121|         0|            0|            0|  0.00%|
   122|         0|            0|            0|  0.00%|
   123|         0|            0|            0|  0.00%|
   124|         0|            0|            0|  0.00%|
   125|         3|            0|            0|  0.00%|
   126|         6|            0|            0|  0.00%|
   127|         3|            0|            0|  0.00%|
   128|         3|            0|            0|  0.00%|
   129|         0|            0|            0|  0.00%|
   130|         0|            0|            0|  0.00%|
   131|         3|            0|            0|  0.00%|
   132|         3|            0|            0|  0.00%|
   133|         3|   0.00289893|  0.000966311|  0.01%|
   134|         0|            0|            0|  0.00%|
   135|         0|            0|            0|  0.00%|
   136|         0|            0|            0|  0.00%|
   137|         0|            0|            0|  0.00%|
   138|         0|            0|            0|  0.00%|
   139|         0|            0|            0|  0.00%|
   140|         0|            0|            0|  0.00%|
   141|         0|            0|            0|  0.00%|
   142|         0|            0|            0|  0.00%|
   143|         0|            0|            0|  0.00%|
   144|         0|            0|            0|  0.00%|
   145|         0|            0|            0|  0.00%|
   146|         0|            0|            0|  0.00%|
   147|         0|            0|            0|  0.00%|
   148|         0|            0|            0|  0.00%|
   149|         0|            0|            0|  0.00%|
   150|         0|            0|            0|  0.00%|
   151|         0|            0|            0|  0.00%|
   152|         0|            0|            0|  0.00%|
   153|         0|            0|            0|  0.00%|
   154|         0|            0|            0|  0.00%|
   155|         0|            0|            0|  0.00%|
   156|         0|            0|            0|  0.00%|
   157|         0|            0|            0|  0.00%|
   158|         0|            0|            0|  0.00%|
   159|         0|            0|            0|  0.00%|
   160|         0|            0|            0|  0.00%|
   161|         0|            0|            0|  0.00%|
   162|         0|            0|            0|  0.00%|
   163|         0|            0|            0|  0.00%|
   164|         0|            0|            0|  0.00%|
   165|         0|            0|            0|  0.00%|
   166|         0|            0|            0|  0.00%|
   167|         0|            0|            0|  0.00%|
   168|         0|            0|            0|  0.00%|
   169|         0|            0|            0|  0.00%|
   170|         0|            0|            0|  0.00%|
   171|         0|            0|            0|  0.00%|
   172|         0|            0|            0|  0.00%|
   173|         0|            0|            0|  0.00%|
   174|         0|            0|            0|  0.00%|
   175|         0|            0|            0|  0.00%|
   176|         0|            0|            0|  0.00%|
   177|         0|            0|            0|  0.00%|
   178|         0|            0|            0|  0.00%|
   179|         0|            0|            0|  0.00%|
   180|         0|            0|            0|  0.00%|
   181|         0|            0|            0|  0.00%|
   182|         0|            0|            0|  0.00%|
   183|         0|            0|            0|  0.00%|
   184|         0|            0|            0|  0.00%|
   185|         0|            0|            0|  0.00%|
   186|         0|            0|            0|  0.00%|
   187|         0|            0|            0|  0.00%|
   188|         0|            0|            0|  0.00%|
   189|         0|            0|            0|  0.00%|
   190|         0|            0|            0|  0.00%|
   191|         0|            0|            0|  0.00%|
   192|         0|            0|            0|  0.00%|
   193|         0|            0|            0|  0.00%|
   194|         0|            0|            0|  0.00%|
   195|         0|            0|            0|  0.00%|
   196|         0|            0|            0|  0.00%|
   197|         0|            0|            0|  0.00%|
   198|         0|            0|            0|  0.00%|
   199|         0|            0|            0|  0.00%|
   200|         0|            0|            0|  0.00%|
   201|         0|            0|            0|  0.00%|
   202|         0|            0|            0|  0.00%|
   203|         0|            0|            0|  0.00%|
   204|         0|            0|            0|  0.00%|
   205|         0|            0|            0|  0.00%|
   206|         0|            0|            0|  0.00%|
   207|         0|            0|            0|  0.00%|
   208|         0|            0|            0|  0.00%|
   209|         0|            0|            0|  0.00%|
   210|         0|            0|            0|  0.00%|
   211|         0|            0|            0|  0.00%|
   212|         0|            0|            0|  0.00%|
   213|         0|            0|            0|  0.00%|
   214|         0|            0|            0|  0.00%|
   215|         0|            0|            0|  0.00%|
   216|         0|            0|            0|  0.00%|
   217|         0|            0|            0|  0.00%|
   218|         0|            0|            0|  0.00%|
   219|         0|            0|            0|  0.00%|
   220|         0|            0|            0|  0.00%|
   221|         0|            0|            0|  0.00%|
   222|         0|            0|            0|  0.00%|
   223|         0|            0|            0|  0.00%|
   224|         0|            0|            0|  0.00%|
   225|         0|            0|            0|  0.00%|
   226|         0|            0|            0|  0.00%|
   227|         0|            0|            0|  0.00%|
   228|         0|            0|            0|  0.00%|
   229|         0|            0|            0|  0.00%|
   230|         0|            0|            0|  0.00%|
   231|         0|            0|            0|  0.00%|
   232|         0|            0|            0|  0.00%|
   233|         0|            0|            0|  0.00%|
   234|         0|            0|            0|  0.00%|
   235|         0|            0|            0|  0.00%|
   236|         0|            0|            0|  0.00%|
   237|         0|            0|            0|  0.00%|
   238|         0|            0|            0|  0.00%|
   239|         0|            0|            0|  0.00%|
   240|         0|            0|            0|  0.00%|
   241|         0|            0|            0|  0.00%|
   242|         0|            0|            0|  0.00%|
   243|         0|            0|            0|  0.00%|
   244|         0|            0|            0|  0.00%|
   245|         0|            0|            0|  0.00%|
   246|         0|            0|            0|  0.00%|
   247|         0|            0|            0|  0.00%|
   248|         0|            0|            0|  0.00%|
   249|         0|            0|            0|  0.00%|
   250|         0|            0|            0|  0.00%|
   251|         0|            0|            0|  0.00%|
   252|         0|            0|            0|  0.00%|
   253|         0|            0|            0|  0.00%|
   254|         0|            0|            0|  0.00%|
   255|         0|            0|            0|  0.00%|
   256|         0|            0|            0|  0.00%|
   257|         0|            0|            0|  0.00%|
   258|         0|            0|            0|  0.00%|
   259|         0|            0|            0|  0.00%|
   260|         0|            0|            0|  0.00%|
   261|         0|            0|            0|  0.00%|
   262|         0|            0|            0|  0.00%|
   263|         0|            0|            0|  0.00%|
   264|         0|            0|            0|  0.00%|
   265|         0|            0|            0|  0.00%|
   266|         0|            0|            0|  0.00%|
   267|         0|            0|            0|  0.00%|
   268|         0|            0|            0|  0.00%|
   269|         0|            0|            0|  0.00%|
   270|         0|            0|            0|  0.00%|
   271|         0|            0|            0|  0.00%|
   272|         0|            0|            0|  0.00%|
   273|         0|            0|            0|  0.00%|
   274|         0|            0|            0|  0.00%|
   275|         0|            0|            0|  0.00%|
   276|         0|            0|            0|  0.00%|
   277|         0|            0|            0|  0.00%|
   278|         0|            0|            0|  0.00%|
   279|         0|            0|            0|  0.00%|
   280|         0|            0|            0|  0.00%|
   281|         0|            0|            0|  0.00%|
   282|         0|            0|            0|  0.00%|
   283|         0|            0|            0|  0.00%|
   284|         0|            0|            0|  0.00%|
   285|         0|            0|            0|  0.00%|
   286|         0|            0|            0|  0.00%|
   287|         0|            0|            0|  0.00%|
   288|         0|            0|            0|  0.00%|
   289|         0|            0|            0|  0.00%|
   290|         0|            0|            0|  0.00%|
   291|         0|            0|            0|  0.00%|
   292|         0|            0|            0|  0.00%|
   293|         0|            0|            0|  0.00%|
   294|         0|            0|            0|  0.00%|
   295|         0|            0|            0|  0.00%|
   296|         0|            0|            0|  0.00%|
   297|         0|            0|            0|  0.00%|
   298|         0|            0|            0|  0.00%|
   299|         0|            0|            0|  0.00%|
   300|         0|            0|            0|  0.00%|
   301|       170|   0.00100088|  5.88754e-06|  0.00%|
   302|         0|            0|            0|  0.00%|
   303|         0|            0|            0|  0.00%|
   304|         0|            0|            0|  0.00%|
   305|         0|            0|            0|  0.00%|
   306|         0|            0|            0|  0.00%|
   307|         0|            0|            0|  0.00%|
   308|         0|            0|            0|  0.00%|
   309|         0|            0|            0|  0.00%|
   310|         0|            0|            0|  0.00%|
   311|         0|            0|            0|  0.00%|
   312|         0|            0|            0|  0.00%|
   313|         0|            0|            0|  0.00%|
   314|         0|            0|            0|  0.00%|
   315|         0|            0|            0|  0.00%|
   316|         0|            0|            0|  0.00%|
   317|         0|            0|            0|  0.00%|
   318|         0|            0|            0|  0.00%|
   319|       170|   0.00100231|  5.89595e-06|  0.00%|
   320|         0|            0|            0|  0.00%|
   321|         0|            0|            0|  0.00%|
   322|         0|            0|            0|  0.00%|
   323|         0|            0|            0|  0.00%|
   324|         0|            0|            0|  0.00%|
   325|         0|            0|            0|  0.00%|
   326|       170|   0.00200272|  1.17807e-05|  0.00%|
   327|       170|   0.00499368|  2.93746e-05|  0.01%|
(call)|       170|    0.0200207|  0.000117769|  0.04%|# <frozen importlib._bootstrap_external>:68 _path_split
   328|       170|  0.000997782|   5.8693e-06|  0.00%|
   329|       170|            0|            0|  0.00%|
   330|       170|            0|            0|  0.00%|
   331|         0|            0|            0|  0.00%|
   332|       170|            0|            0|  0.00%|
   333|       170|   0.00100207|  5.89455e-06|  0.00%|
   334|       170|            0|            0|  0.00%|
   335|       170|   0.00200367|  1.17863e-05|  0.00%|
   336|         0|            0|            0|  0.00%|
   337|         0|            0|            0|  0.00%|
   338|       170|            0|            0|  0.00%|
   339|       170|            0|            0|  0.00%|
   340|         0|            0|            0|  0.00%|
   341|         0|            0|            0|  0.00%|
   342|         0|            0|            0|  0.00%|
   343|       170|            0|            0|  0.00%|
   344|       170|   0.00100017|  5.88333e-06|  0.00%|
   345|         0|            0|            0|  0.00%|
   346|         0|            0|            0|  0.00%|
   347|         0|            0|            0|  0.00%|
   348|         0|            0|            0|  0.00%|
   349|         0|            0|            0|  0.00%|
   350|         0|            0|            0|  0.00%|
   351|         0|            0|            0|  0.00%|
   352|         0|            0|            0|  0.00%|
   353|         0|            0|            0|  0.00%|
   354|         0|            0|            0|  0.00%|
   355|         0|            0|            0|  0.00%|
   356|         0|            0|            0|  0.00%|
   357|         0|            0|            0|  0.00%|
   358|         0|            0|            0|  0.00%|
   359|         0|            0|            0|  0.00%|
   360|         0|            0|            0|  0.00%|
   361|         0|            0|            0|  0.00%|
   362|         0|            0|            0|  0.00%|
   363|         0|            0|            0|  0.00%|
   364|         0|            0|            0|  0.00%|
   365|         0|            0|            0|  0.00%|
   366|         0|            0|            0|  0.00%|
   367|         0|            0|            0|  0.00%|
   368|         0|            0|            0|  0.00%|
   369|       170|   0.00200152|  1.17737e-05|  0.00%|
(call)|       170|   0.00792766|  4.66333e-05|  0.01%|# <frozen importlib._bootstrap_external>:62 _path_join
   370|         0|            0|            0|  0.00%|
   371|         0|            0|            0|  0.00%|
   372|         0|            0|            0|  0.00%|
   373|         0|            0|            0|  0.00%|
   374|         0|            0|            0|  0.00%|
   375|         0|            0|            0|  0.00%|
   376|         0|            0|            0|  0.00%|
   377|         0|            0|            0|  0.00%|
   378|         0|            0|            0|  0.00%|
   379|         0|            0|            0|  0.00%|
   380|         0|            0|            0|  0.00%|
   381|         0|            0|            0|  0.00%|
   382|         0|            0|            0|  0.00%|
   383|         0|            0|            0|  0.00%|
   384|         0|            0|            0|  0.00%|
   385|         0|            0|            0|  0.00%|
   386|         0|            0|            0|  0.00%|
   387|         0|            0|            0|  0.00%|
   388|         0|            0|            0|  0.00%|
   389|         0|            0|            0|  0.00%|
   390|         0|            0|            0|  0.00%|
   391|         0|            0|            0|  0.00%|
   392|         0|            0|            0|  0.00%|
   393|         0|            0|            0|  0.00%|
   394|         0|            0|            0|  0.00%|
   395|         0|            0|            0|  0.00%|
   396|         0|            0|            0|  0.00%|
   397|         0|            0|            0|  0.00%|
   398|         0|            0|            0|  0.00%|
   399|         0|            0|            0|  0.00%|
   400|         0|            0|            0|  0.00%|
   401|         0|            0|            0|  0.00%|
   402|         0|            0|            0|  0.00%|
   403|         0|            0|            0|  0.00%|
   404|         0|            0|            0|  0.00%|
   405|         0|            0|            0|  0.00%|
   406|         0|            0|            0|  0.00%|
   407|         0|            0|            0|  0.00%|
   408|         0|            0|            0|  0.00%|
   409|         0|            0|            0|  0.00%|
   410|         0|            0|            0|  0.00%|
   411|         0|            0|            0|  0.00%|
   412|         0|            0|            0|  0.00%|
   413|         0|            0|            0|  0.00%|
   414|         0|            0|            0|  0.00%|
   415|         0|            0|            0|  0.00%|
   416|         0|            0|            0|  0.00%|
   417|         0|            0|            0|  0.00%|
   418|         0|            0|            0|  0.00%|
   419|         0|            0|            0|  0.00%|
   420|         0|            0|            0|  0.00%|
   421|         0|            0|            0|  0.00%|
   422|         0|            0|            0|  0.00%|
   423|         0|            0|            0|  0.00%|
   424|         0|            0|            0|  0.00%|
   425|         0|            0|            0|  0.00%|
   426|         0|            0|            0|  0.00%|
   427|         0|            0|            0|  0.00%|
   428|         0|            0|            0|  0.00%|
   429|         0|            0|            0|  0.00%|
   430|         0|            0|            0|  0.00%|
   431|       116|            0|            0|  0.00%|
   432|       116|  0.000984192|  8.48441e-06|  0.00%|
   433|        85|            0|            0|  0.00%|
   434|        85|            0|            0|  0.00%|
(call)|        85|    0.0269821|  0.000317436|  0.05%|# <frozen importlib._bootstrap_external>:301 cache_from_source
   435|         0|            0|            0|  0.00%|
   436|         0|            0|            0|  0.00%|
   437|        31|            0|            0|  0.00%|
   438|         0|            0|            0|  0.00%|
   439|         0|            0|            0|  0.00%|
   440|        31|            0|            0|  0.00%|
   441|         0|            0|            0|  0.00%|
   442|         0|            0|            0|  0.00%|
   443|         3|            0|            0|  0.00%|
   444|         0|            0|            0|  0.00%|
   445|         3|            0|            0|  0.00%|
   446|         3|            0|            0|  0.00%|
(call)|         3|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:80 _path_stat
   447|         0|            0|            0|  0.00%|
   448|         0|            0|            0|  0.00%|
   449|         0|            0|            0|  0.00%|
   450|         0|            0|            0|  0.00%|
   451|         3|            0|            0|  0.00%|
   452|         3|            0|            0|  0.00%|
   453|         0|            0|            0|  0.00%|
   454|         0|            0|            0|  0.00%|
   455|         0|            0|            0|  0.00%|
   456|         0|            0|            0|  0.00%|
   457|         0|            0|            0|  0.00%|
   458|         0|            0|            0|  0.00%|
   459|         0|            0|            0|  0.00%|
   460|         0|            0|            0|  0.00%|
   461|         0|            0|            0|  0.00%|
   462|         0|            0|            0|  0.00%|
   463|        85|            0|            0|  0.00%|
   464|        85|            0|            0|  0.00%|
   465|         0|            0|            0|  0.00%|
   466|        85|            0|            0|  0.00%|
   467|         0|            0|            0|  0.00%|
   468|         0|            0|            0|  0.00%|
   469|        85|            0|            0|  0.00%|
(call)|        85|   0.00200009|  2.35305e-05|  0.00%|# <frozen importlib._bootstrap_external>:971 get_filename
   470|         0|            0|            0|  0.00%|
   471|         0|            0|            0|  0.00%|
   472|         0|            0|            0|  0.00%|
   473|         0|            0|            0|  0.00%|
   474|         0|            0|            0|  0.00%|
   475|         0|            0|            0|  0.00%|
   476|         0|            0|            0|  0.00%|
   477|         0|            0|            0|  0.00%|
   478|         0|            0|            0|  0.00%|
   479|         0|            0|            0|  0.00%|
   480|         0|            0|            0|  0.00%|
   481|         0|            0|            0|  0.00%|
   482|         0|            0|            0|  0.00%|
   483|         0|            0|            0|  0.00%|
   484|         0|            0|            0|  0.00%|
   485|         0|            0|            0|  0.00%|
   486|         0|            0|            0|  0.00%|
   487|         0|            0|            0|  0.00%|
   488|         0|            0|            0|  0.00%|
   489|         0|            0|            0|  0.00%|
   490|         0|            0|            0|  0.00%|
   491|         0|            0|            0|  0.00%|
   492|         0|            0|            0|  0.00%|
   493|         0|            0|            0|  0.00%|
   494|         0|            0|            0|  0.00%|
   495|         0|            0|            0|  0.00%|
   496|         0|            0|            0|  0.00%|
   497|         0|            0|            0|  0.00%|
   498|         0|            0|            0|  0.00%|
   499|         0|            0|            0|  0.00%|
   500|        85|   0.00103903|  1.22239e-05|  0.00%|
   501|         0|            0|            0|  0.00%|
   502|         0|            0|            0|  0.00%|
   503|         0|            0|            0|  0.00%|
   504|         0|            0|            0|  0.00%|
   505|         0|            0|            0|  0.00%|
   506|         0|            0|            0|  0.00%|
   507|         0|            0|            0|  0.00%|
   508|         0|            0|            0|  0.00%|
   509|         0|            0|            0|  0.00%|
   510|         0|            0|            0|  0.00%|
   511|         0|            0|            0|  0.00%|
   512|         0|            0|            0|  0.00%|
   513|         0|            0|            0|  0.00%|
   514|         0|            0|            0|  0.00%|
   515|         0|            0|            0|  0.00%|
   516|        85|            0|            0|  0.00%|
   517|        85|            0|            0|  0.00%|
   518|         0|            0|            0|  0.00%|
   519|         0|            0|            0|  0.00%|
   520|         0|            0|            0|  0.00%|
   521|        85|            0|            0|  0.00%|
   522|         0|            0|            0|  0.00%|
   523|         0|            0|            0|  0.00%|
   524|         0|            0|            0|  0.00%|
   525|        85|            0|            0|  0.00%|
(call)|        85|   0.00198412|  2.33426e-05|  0.00%|# <frozen importlib._bootstrap_external>:51 _unpack_uint32
   526|         0|            0|            0|  0.00%|
   527|        85|  0.000999212|  1.17554e-05|  0.00%|
   528|         0|            0|            0|  0.00%|
   529|         0|            0|            0|  0.00%|
   530|        85|  0.000999928|  1.17639e-05|  0.00%|
   531|         0|            0|            0|  0.00%|
   532|         0|            0|            0|  0.00%|
   533|        85|            0|            0|  0.00%|
   534|         0|            0|            0|  0.00%|
   535|         0|            0|            0|  0.00%|
   536|         0|            0|            0|  0.00%|
   537|         0|            0|            0|  0.00%|
   538|         0|            0|            0|  0.00%|
   539|         0|            0|            0|  0.00%|
   540|         0|            0|            0|  0.00%|
   541|         0|            0|            0|  0.00%|
   542|         0|            0|            0|  0.00%|
   543|         0|            0|            0|  0.00%|
   544|         0|            0|            0|  0.00%|
   545|         0|            0|            0|  0.00%|
   546|         0|            0|            0|  0.00%|
   547|         0|            0|            0|  0.00%|
   548|         0|            0|            0|  0.00%|
   549|         0|            0|            0|  0.00%|
   550|         0|            0|            0|  0.00%|
   551|         0|            0|            0|  0.00%|
   552|        85|            0|            0|  0.00%|
(call)|        85|  0.000999212|  1.17554e-05|  0.00%|# <frozen importlib._bootstrap_external>:51 _unpack_uint32
   553|         3|            0|            0|  0.00%|
   554|         3|            0|            0|  0.00%|
(call)|         3|            0|            0|  0.00%|# <frozen importlib._bootstrap>:231 _verbose_message
   555|         3|            0|            0|  0.00%|
   556|        82|   0.00103664|   1.2642e-05|  0.00%|
   557|        82|   0.00200009|  2.43914e-05|  0.00%|
(call)|        82|    0.0010004|  1.22001e-05|  0.00%|# <frozen importlib._bootstrap_external>:51 _unpack_uint32
   558|         0|            0|            0|  0.00%|
   559|         0|            0|            0|  0.00%|
   560|         0|            0|            0|  0.00%|
   561|         0|            0|            0|  0.00%|
   562|         0|            0|            0|  0.00%|
   563|         0|            0|            0|  0.00%|
   564|         0|            0|            0|  0.00%|
   565|         0|            0|            0|  0.00%|
   566|         0|            0|            0|  0.00%|
   567|         0|            0|            0|  0.00%|
   568|         0|            0|            0|  0.00%|
   569|         0|            0|            0|  0.00%|
   570|         0|            0|            0|  0.00%|
   571|         0|            0|            0|  0.00%|
   572|         0|            0|            0|  0.00%|
   573|         0|            0|            0|  0.00%|
   574|         0|            0|            0|  0.00%|
   575|         0|            0|            0|  0.00%|
   576|         0|            0|            0|  0.00%|
   577|         0|            0|            0|  0.00%|
   578|         0|            0|            0|  0.00%|
   579|         0|            0|            0|  0.00%|
   580|         0|            0|            0|  0.00%|
   581|         0|            0|            0|  0.00%|
   582|         0|            0|            0|  0.00%|
   583|         0|            0|            0|  0.00%|
   584|         0|            0|            0|  0.00%|
   585|        82|            0|            0|  0.00%|
   586|         0|            0|            0|  0.00%|
   587|        82|    0.0110624|  0.000134907|  0.02%|
   588|        82|            0|            0|  0.00%|
   589|        82|    0.0012784|  1.55902e-05|  0.00%|
(call)|        82|            0|            0|  0.00%|# <frozen importlib._bootstrap>:231 _verbose_message
   590|        82|            0|            0|  0.00%|
   591|        82|   0.00103259|  1.25926e-05|  0.00%|
   592|        82|            0|            0|  0.00%|
   593|         0|            0|            0|  0.00%|
   594|         0|            0|            0|  0.00%|
   595|         0|            0|            0|  0.00%|
   596|         0|            0|            0|  0.00%|
   597|         0|            0|            0|  0.00%|
   598|         3|            0|            0|  0.00%|
   599|         0|            0|            0|  0.00%|
   600|         3|            0|            0|  0.00%|
   601|         3|            0|            0|  0.00%|
(call)|         3|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:46 _pack_uint32
   602|         3|            0|            0|  0.00%|
(call)|         3|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:46 _pack_uint32
   603|         3|            0|            0|  0.00%|
(call)|         3|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:46 _pack_uint32
   604|         3|   0.00199795|  0.000665983|  0.00%|
   605|         3|            0|            0|  0.00%|
   606|         0|            0|            0|  0.00%|
   607|         0|            0|            0|  0.00%|
   608|         0|            0|            0|  0.00%|
   609|         0|            0|            0|  0.00%|
   610|         0|            0|            0|  0.00%|
   611|         0|            0|            0|  0.00%|
   612|         0|            0|            0|  0.00%|
   613|         0|            0|            0|  0.00%|
   614|         0|            0|            0|  0.00%|
   615|         0|            0|            0|  0.00%|
   616|         0|            0|            0|  0.00%|
   617|         0|            0|            0|  0.00%|
   618|         0|            0|            0|  0.00%|
   619|         0|            0|            0|  0.00%|
   620|         0|            0|            0|  0.00%|
   621|         0|            0|            0|  0.00%|
   622|         0|            0|            0|  0.00%|
   623|         0|            0|            0|  0.00%|
   624|         0|            0|            0|  0.00%|
   625|         0|            0|            0|  0.00%|
   626|         0|            0|            0|  0.00%|
   627|         0|            0|            0|  0.00%|
   628|         0|            0|            0|  0.00%|
   629|         0|            0|            0|  0.00%|
   630|         0|            0|            0|  0.00%|
   631|         0|            0|            0|  0.00%|
   632|         0|            0|            0|  0.00%|
   633|         0|            0|            0|  0.00%|
   634|         0|            0|            0|  0.00%|
   635|         0|            0|            0|  0.00%|
   636|       116|            0|            0|  0.00%|
   637|         0|            0|            0|  0.00%|
   638|         0|            0|            0|  0.00%|
   639|         0|            0|            0|  0.00%|
   640|         0|            0|            0|  0.00%|
   641|         0|            0|            0|  0.00%|
   642|         0|            0|            0|  0.00%|
   643|         0|            0|            0|  0.00%|
   644|         0|            0|            0|  0.00%|
   645|         0|            0|            0|  0.00%|
   646|         0|            0|            0|  0.00%|
   647|         0|            0|            0|  0.00%|
   648|       116|            0|            0|  0.00%|
   649|         0|            0|            0|  0.00%|
   650|         0|            0|            0|  0.00%|
   651|         0|            0|            0|  0.00%|
   652|         0|            0|            0|  0.00%|
   653|         0|            0|            0|  0.00%|
   654|         0|            0|            0|  0.00%|
   655|         0|            0|            0|  0.00%|
   656|         0|            0|            0|  0.00%|
   657|         0|            0|            0|  0.00%|
   658|         0|            0|            0|  0.00%|
   659|         0|            0|            0|  0.00%|
   660|       116|            0|            0|  0.00%|
   661|         0|            0|            0|  0.00%|
   662|         0|            0|            0|  0.00%|
   663|         0|            0|            0|  0.00%|
   664|         0|            0|            0|  0.00%|
   665|         0|            0|            0|  0.00%|
   666|         0|            0|            0|  0.00%|
   667|         0|            0|            0|  0.00%|
   668|       116|   0.00096488|  8.31793e-06|  0.00%|
(call)|       116|   0.00308609|  2.66042e-05|  0.01%|# <frozen importlib._bootstrap>:351 __init__
   669|       116|            0|            0|  0.00%|
   670|         0|            0|            0|  0.00%|
   671|         0|            0|            0|  0.00%|
   672|       116|   0.00100064|  8.62623e-06|  0.00%|
   673|         0|            0|            0|  0.00%|
   674|         0|            0|            0|  0.00%|
   675|         0|            0|            0|  0.00%|
   676|         0|            0|            0|  0.00%|
   677|         0|            0|            0|  0.00%|
   678|         0|            0|            0|  0.00%|
   679|         0|            0|            0|  0.00%|
   680|         0|            0|            0|  0.00%|
   681|         0|            0|            0|  0.00%|
   682|       116|            0|            0|  0.00%|
   683|         0|            0|            0|  0.00%|
   684|         0|            0|            0|  0.00%|
   685|         0|            0|            0|  0.00%|
   686|         0|            0|            0|  0.00%|
   687|         0|            0|            0|  0.00%|
   688|         0|            0|            0|  0.00%|
   689|         0|            0|            0|  0.00%|
   690|         0|            0|            0|  0.00%|
   691|         0|            0|            0|  0.00%|
   692|         0|            0|            0|  0.00%|
   693|       116|            0|            0|  0.00%|
   694|       116|            0|            0|  0.00%|
   695|         0|            0|            0|  0.00%|
   696|         0|            0|            0|  0.00%|
   697|         0|            0|            0|  0.00%|
   698|         0|            0|            0|  0.00%|
   699|       116|            0|            0|  0.00%|
   700|         0|            0|            0|  0.00%|
   701|         0|            0|            0|  0.00%|
   702|         0|            0|            0|  0.00%|
   703|         0|            0|            0|  0.00%|
   704|         0|            0|            0|  0.00%|
   705|         0|            0|            0|  0.00%|
   706|         0|            0|            0|  0.00%|
   707|         0|            0|            0|  0.00%|
   708|         0|            0|            0|  0.00%|
   709|         0|            0|            0|  0.00%|
   710|         0|            0|            0|  0.00%|
   711|         0|            0|            0|  0.00%|
   712|         0|            0|            0|  0.00%|
   713|         0|            0|            0|  0.00%|
   714|         0|            0|            0|  0.00%|
   715|         0|            0|            0|  0.00%|
   716|         0|            0|            0|  0.00%|
   717|         0|            0|            0|  0.00%|
   718|         0|            0|            0|  0.00%|
   719|         0|            0|            0|  0.00%|
   720|         0|            0|            0|  0.00%|
   721|         0|            0|            0|  0.00%|
   722|         0|            0|            0|  0.00%|
   723|         0|            0|            0|  0.00%|
   724|         0|            0|            0|  0.00%|
   725|         0|            0|            0|  0.00%|
   726|         0|            0|            0|  0.00%|
   727|         0|            0|            0|  0.00%|
   728|         0|            0|            0|  0.00%|
   729|         0|            0|            0|  0.00%|
   730|         0|            0|            0|  0.00%|
   731|         0|            0|            0|  0.00%|
   732|         0|            0|            0|  0.00%|
   733|         0|            0|            0|  0.00%|
   734|         0|            0|            0|  0.00%|
   735|         0|            0|            0|  0.00%|
   736|         0|            0|            0|  0.00%|
   737|         0|            0|            0|  0.00%|
   738|         0|            0|            0|  0.00%|
   739|         0|            0|            0|  0.00%|
   740|         0|            0|            0|  0.00%|
   741|         0|            0|            0|  0.00%|
   742|         0|            0|            0|  0.00%|
   743|         0|            0|            0|  0.00%|
   744|         0|            0|            0|  0.00%|
   745|         0|            0|            0|  0.00%|
   746|         0|            0|            0|  0.00%|
   747|         0|            0|            0|  0.00%|
   748|         0|            0|            0|  0.00%|
   749|         0|            0|            0|  0.00%|
   750|         0|            0|            0|  0.00%|
   751|         0|            0|            0|  0.00%|
   752|         0|            0|            0|  0.00%|
   753|         0|            0|            0|  0.00%|
   754|         0|            0|            0|  0.00%|
   755|         0|            0|            0|  0.00%|
   756|         0|            0|            0|  0.00%|
   757|         0|            0|            0|  0.00%|
   758|         0|            0|            0|  0.00%|
   759|         0|            0|            0|  0.00%|
   760|         0|            0|            0|  0.00%|
   761|         0|            0|            0|  0.00%|
   762|         0|            0|            0|  0.00%|
   763|         0|            0|            0|  0.00%|
   764|         0|            0|            0|  0.00%|
   765|         0|            0|            0|  0.00%|
   766|         0|            0|            0|  0.00%|
   767|         0|            0|            0|  0.00%|
   768|         0|            0|            0|  0.00%|
   769|         0|            0|            0|  0.00%|
   770|         0|            0|            0|  0.00%|
   771|         0|            0|            0|  0.00%|
   772|         0|            0|            0|  0.00%|
   773|         0|            0|            0|  0.00%|
   774|         0|            0|            0|  0.00%|
   775|         0|            0|            0|  0.00%|
   776|         0|            0|            0|  0.00%|
   777|         0|            0|            0|  0.00%|
   778|         0|            0|            0|  0.00%|
   779|         0|            0|            0|  0.00%|
   780|         0|            0|            0|  0.00%|
   781|        85|            0|            0|  0.00%|
   782|        85|            0|            0|  0.00%|
   783|         0|            0|            0|  0.00%|
   784|        85|   0.00103736|  1.22042e-05|  0.00%|
   785|         0|            0|            0|  0.00%|
   786|        85|    0.0019989|  2.35165e-05|  0.00%|
(call)|        85|     0.104796|   0.00123289|  0.19%|# <frozen importlib._bootstrap_external>:856 get_code
   787|        85|            0|            0|  0.00%|
   788|         0|            0|            0|  0.00%|
   789|         0|            0|            0|  0.00%|
   790|        85|    0.0010004|  1.17695e-05|  0.00%|
(call)|        85|      2.86562|    0.0337131|  5.10%|# <frozen importlib._bootstrap>:220 _call_with_frames_removed
   791|         0|            0|            0|  0.00%|
   792|         0|            0|            0|  0.00%|
   793|         0|            0|            0|  0.00%|
   794|         0|            0|            0|  0.00%|
   795|         0|            0|            0|  0.00%|
   796|         0|            0|            0|  0.00%|
   797|         0|            0|            0|  0.00%|
   798|         0|            0|            0|  0.00%|
   799|         0|            0|            0|  0.00%|
   800|         0|            0|            0|  0.00%|
   801|         0|            0|            0|  0.00%|
   802|         0|            0|            0|  0.00%|
   803|         0|            0|            0|  0.00%|
   804|         0|            0|            0|  0.00%|
   805|         0|            0|            0|  0.00%|
   806|         0|            0|            0|  0.00%|
   807|         0|            0|            0|  0.00%|
   808|         0|            0|            0|  0.00%|
   809|         0|            0|            0|  0.00%|
   810|         0|            0|            0|  0.00%|
   811|         0|            0|            0|  0.00%|
   812|         0|            0|            0|  0.00%|
   813|         0|            0|            0|  0.00%|
   814|         0|            0|            0|  0.00%|
   815|         0|            0|            0|  0.00%|
   816|         0|            0|            0|  0.00%|
   817|         0|            0|            0|  0.00%|
   818|         0|            0|            0|  0.00%|
   819|         0|            0|            0|  0.00%|
   820|         0|            0|            0|  0.00%|
   821|         0|            0|            0|  0.00%|
   822|         0|            0|            0|  0.00%|
   823|         0|            0|            0|  0.00%|
   824|         0|            0|            0|  0.00%|
   825|         0|            0|            0|  0.00%|
   826|         0|            0|            0|  0.00%|
   827|         0|            0|            0|  0.00%|
   828|         0|            0|            0|  0.00%|
   829|         0|            0|            0|  0.00%|
   830|         0|            0|            0|  0.00%|
   831|         0|            0|            0|  0.00%|
   832|         0|            0|            0|  0.00%|
   833|         0|            0|            0|  0.00%|
   834|         0|            0|            0|  0.00%|
   835|         0|            0|            0|  0.00%|
   836|         0|            0|            0|  0.00%|
   837|         0|            0|            0|  0.00%|
   838|         0|            0|            0|  0.00%|
   839|         0|            0|            0|  0.00%|
   840|         0|            0|            0|  0.00%|
   841|         0|            0|            0|  0.00%|
   842|         0|            0|            0|  0.00%|
   843|         0|            0|            0|  0.00%|
   844|         0|            0|            0|  0.00%|
   845|         0|            0|            0|  0.00%|
   846|         0|            0|            0|  0.00%|
   847|         0|            0|            0|  0.00%|
   848|         3|            0|            0|  0.00%|
   849|         0|            0|            0|  0.00%|
   850|         0|            0|            0|  0.00%|
   851|         0|            0|            0|  0.00%|
   852|         0|            0|            0|  0.00%|
   853|         6|            0|            0|  0.00%|
(call)|         3|   0.00205255|  0.000684182|  0.00%|# <frozen importlib._bootstrap>:220 _call_with_frames_removed
   854|         3|            0|            0|  0.00%|
   855|         0|            0|            0|  0.00%|
   856|        85|            0|            0|  0.00%|
   857|         0|            0|            0|  0.00%|
   858|         0|            0|            0|  0.00%|
   859|         0|            0|            0|  0.00%|
   860|         0|            0|            0|  0.00%|
   861|         0|            0|            0|  0.00%|
   862|         0|            0|            0|  0.00%|
   863|        85|   0.00100446|  1.18171e-05|  0.00%|
(call)|        85|   0.00200009|  2.35305e-05|  0.00%|# <frozen importlib._bootstrap_external>:463 _check_name_wrapper
   864|        85|            0|            0|  0.00%|
   865|        85|            0|            0|  0.00%|
   866|        85|            0|            0|  0.00%|
   867|        85|            0|            0|  0.00%|
   868|        85|            0|            0|  0.00%|
   869|        85|   0.00100017|  1.17667e-05|  0.00%|
   870|        85|            0|            0|  0.00%|
(call)|        85|    0.0169711|   0.00019966|  0.03%|# <frozen importlib._bootstrap_external>:301 cache_from_source
   871|         0|            0|            0|  0.00%|
   872|         0|            0|            0|  0.00%|
   873|         0|            0|            0|  0.00%|
   874|        85|            0|            0|  0.00%|
   875|        85|            0|            0|  0.00%|
(call)|        85|   0.00800037|   9.4122e-05|  0.01%|# <frozen importlib._bootstrap_external>:1017 path_stats
   876|         0|            0|            0|  0.00%|
   877|         0|            0|            0|  0.00%|
   878|         0|            0|            0|  0.00%|
   879|        85|            0|            0|  0.00%|
   880|        85|            0|            0|  0.00%|
   881|        85|   0.00194716|  2.29078e-05|  0.00%|
(call)|        85|    0.0335333|   0.00039451|  0.06%|# <frozen importlib._bootstrap_external>:976 get_data
   882|         0|            0|            0|  0.00%|
   883|         0|            0|            0|  0.00%|
   884|         0|            0|            0|  0.00%|
   885|        85|            0|            0|  0.00%|
   886|        85|  0.000999928|  1.17639e-05|  0.00%|
   887|        85|            0|            0|  0.00%|
   888|         0|            0|            0|  0.00%|
   889|        85|            0|            0|  0.00%|
   890|        85|            0|            0|  0.00%|
(call)|        85|   0.00502229|  5.90857e-05|  0.01%|# <frozen importlib._bootstrap_external>:500 _classify_pyc
   891|        85|   0.00100017|  1.17667e-05|  0.00%|
   892|        85|            0|            0|  0.00%|
   893|        85|            0|            0|  0.00%|
   894|         0|            0|            0|  0.00%|
   895|         0|            0|            0|  0.00%|
   896|         0|            0|            0|  0.00%|
   897|         0|            0|            0|  0.00%|
   898|         0|            0|            0|  0.00%|
   899|         0|            0|            0|  0.00%|
   900|         0|            0|            0|  0.00%|
   901|         0|            0|            0|  0.00%|
   902|         0|            0|            0|  0.00%|
   903|         0|            0|            0|  0.00%|
   904|         0|            0|            0|  0.00%|
   905|         0|            0|            0|  0.00%|
   906|       170|   0.00100088|  5.88754e-06|  0.00%|
(call)|        85|   0.00503635|  5.92512e-05|  0.01%|# <frozen importlib._bootstrap_external>:533 _validate_timestamp_pyc
   907|        85|            0|            0|  0.00%|
   908|        85|  0.000967741|  1.13852e-05|  0.00%|
   909|        85|            0|            0|  0.00%|
   910|        85|   0.00100088|  1.17751e-05|  0.00%|
   911|        85|            0|            0|  0.00%|
   912|         0|            0|            0|  0.00%|
   913|         3|            0|            0|  0.00%|
   914|         3|            0|            0|  0.00%|
   915|         0|            0|            0|  0.00%|
   916|       164|    0.0010016|   6.1073e-06|  0.00%|
(call)|        82|   0.00199938|  2.43827e-05|  0.00%|# <frozen importlib._bootstrap>:231 _verbose_message
   917|        82|            0|            0|  0.00%|
   918|       164|   0.00100088|  6.10293e-06|  0.00%|
(call)|        82|    0.0133734|   0.00016309|  0.02%|# <frozen importlib._bootstrap_external>:585 _compile_bytecode
   919|        82|            0|            0|  0.00%|
   920|        82|            0|            0|  0.00%|
   921|         3|            0|            0|  0.00%|
   922|         3|            0|            0|  0.00%|
(call)|         3|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:976 get_data
   923|         3|            0|            0|  0.00%|
(call)|         3|   0.00205255|  0.000684182|  0.00%|# <frozen importlib._bootstrap_external>:848 source_to_code
   924|         3|            0|            0|  0.00%|
(call)|         3|            0|            0|  0.00%|# <frozen importlib._bootstrap>:231 _verbose_message
   925|         6|            0|            0|  0.00%|
   926|         3|            0|            0|  0.00%|
   927|         3|            0|            0|  0.00%|
   928|         0|            0|            0|  0.00%|
   929|         0|            0|            0|  0.00%|
   930|         0|            0|            0|  0.00%|
   931|         0|            0|            0|  0.00%|
   932|         6|            0|            0|  0.00%|
(call)|         3|   0.00199795|  0.000665983|  0.00%|# <frozen importlib._bootstrap_external>:598 _code_to_timestamp_pyc
   933|         3|            0|            0|  0.00%|
   934|         3|            0|            0|  0.00%|
   935|         3|            0|            0|  0.00%|
(call)|         3|   0.00388503|   0.00129501|  0.01%|# <frozen importlib._bootstrap_external>:1022 _cache_bytecode
   936|         0|            0|            0|  0.00%|
   937|         0|            0|            0|  0.00%|
   938|         3|            0|            0|  0.00%|
   939|         0|            0|            0|  0.00%|
   940|         0|            0|            0|  0.00%|
   941|         0|            0|            0|  0.00%|
   942|         0|            0|            0|  0.00%|
   943|         0|            0|            0|  0.00%|
   944|         0|            0|            0|  0.00%|
   945|         0|            0|            0|  0.00%|
   946|        85|            0|            0|  0.00%|
   947|         0|            0|            0|  0.00%|
   948|         0|            0|            0|  0.00%|
   949|        85|            0|            0|  0.00%|
   950|        85|  0.000999928|  1.17639e-05|  0.00%|
   951|         0|            0|            0|  0.00%|
   952|         0|            0|            0|  0.00%|
   953|         0|            0|            0|  0.00%|
   954|         0|            0|            0|  0.00%|
   955|         0|            0|            0|  0.00%|
   956|         0|            0|            0|  0.00%|
   957|         0|            0|            0|  0.00%|
   958|         0|            0|            0|  0.00%|
   959|         0|            0|            0|  0.00%|
   960|         0|            0|            0|  0.00%|
   961|         0|            0|            0|  0.00%|
   962|         0|            0|            0|  0.00%|
   963|         0|            0|            0|  0.00%|
   964|         0|            0|            0|  0.00%|
   965|         0|            0|            0|  0.00%|
   966|         0|            0|            0|  0.00%|
   967|         0|            0|            0|  0.00%|
   968|         0|            0|            0|  0.00%|
   969|         0|            0|            0|  0.00%|
   970|         0|            0|            0|  0.00%|
   971|        85|   0.00100064|  1.17723e-05|  0.00%|
   972|         0|            0|            0|  0.00%|
   973|         0|            0|            0|  0.00%|
   974|        85|  0.000999451|  1.17582e-05|  0.00%|
   975|         0|            0|            0|  0.00%|
   976|        88|            0|            0|  0.00%|
   977|         0|            0|            0|  0.00%|
   978|        88|            0|            0|  0.00%|
   979|        88|    0.0285749|  0.000324715|  0.05%|
   980|        88|   0.00495839|  5.63454e-05|  0.01%|
   981|         0|            0|            0|  0.00%|
   982|         0|            0|            0|  0.00%|
   983|         0|            0|            0|  0.00%|
   984|         0|            0|            0|  0.00%|
   985|         0|            0|            0|  0.00%|
   986|         0|            0|            0|  0.00%|
   987|         0|            0|            0|  0.00%|
   988|         0|            0|            0|  0.00%|
   989|         0|            0|            0|  0.00%|
   990|         0|            0|            0|  0.00%|
   991|         0|            0|            0|  0.00%|
   992|         0|            0|            0|  0.00%|
   993|         0|            0|            0|  0.00%|
   994|         0|            0|            0|  0.00%|
   995|         0|            0|            0|  0.00%|
   996|         0|            0|            0|  0.00%|
   997|         0|            0|            0|  0.00%|
   998|         0|            0|            0|  0.00%|
   999|         0|            0|            0|  0.00%|
  1000|         0|            0|            0|  0.00%|
  1001|         0|            0|            0|  0.00%|
  1002|         0|            0|            0|  0.00%|
  1003|         0|            0|            0|  0.00%|
  1004|         0|            0|            0|  0.00%|
  1005|         0|            0|            0|  0.00%|
  1006|         0|            0|            0|  0.00%|
  1007|         0|            0|            0|  0.00%|
  1008|         0|            0|            0|  0.00%|
  1009|         0|            0|            0|  0.00%|
  1010|         0|            0|            0|  0.00%|
  1011|         0|            0|            0|  0.00%|
  1012|         0|            0|            0|  0.00%|
  1013|         0|            0|            0|  0.00%|
  1014|         0|            0|            0|  0.00%|
  1015|         0|            0|            0|  0.00%|
  1016|         0|            0|            0|  0.00%|
  1017|        85|            0|            0|  0.00%|
  1018|         0|            0|            0|  0.00%|
  1019|        85|  0.000999689|   1.1761e-05|  0.00%|
(call)|        85|   0.00700068|   8.2361e-05|  0.01%|# <frozen importlib._bootstrap_external>:80 _path_stat
  1020|        85|            0|            0|  0.00%|
  1021|         0|            0|            0|  0.00%|
  1022|         3|            0|            0|  0.00%|
  1023|         0|            0|            0|  0.00%|
  1024|         3|            0|            0|  0.00%|
(call)|         3|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:443 _calc_mode
  1025|         3|            0|            0|  0.00%|
(call)|         3|   0.00388503|   0.00129501|  0.01%|# <frozen importlib._bootstrap_external>:1027 set_data
  1026|         0|            0|            0|  0.00%|
  1027|         3|            0|            0|  0.00%|
  1028|         0|            0|            0|  0.00%|
  1029|         3|            0|            0|  0.00%|
(call)|         3|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:68 _path_split
  1030|         3|            0|            0|  0.00%|
  1031|         0|            0|            0|  0.00%|
  1032|         3|            0|            0|  0.00%|
(call)|         3|  0.000986099|    0.0003287|  0.00%|# <frozen importlib._bootstrap_external>:104 _path_isdir
  1033|         0|            0|            0|  0.00%|
  1034|         0|            0|            0|  0.00%|
  1035|         0|            0|            0|  0.00%|
  1036|         3|            0|            0|  0.00%|
  1037|         0|            0|            0|  0.00%|
  1038|         0|            0|            0|  0.00%|
  1039|         0|            0|            0|  0.00%|
  1040|         0|            0|            0|  0.00%|
  1041|         0|            0|            0|  0.00%|
  1042|         0|            0|            0|  0.00%|
  1043|         0|            0|            0|  0.00%|
  1044|         0|            0|            0|  0.00%|
  1045|         0|            0|            0|  0.00%|
  1046|         0|            0|            0|  0.00%|
  1047|         0|            0|            0|  0.00%|
  1048|         0|            0|            0|  0.00%|
  1049|         3|            0|            0|  0.00%|
  1050|         3|            0|            0|  0.00%|
(call)|         3|   0.00289893|  0.000966311|  0.01%|# <frozen importlib._bootstrap_external>:120 _write_atomic
  1051|         3|            0|            0|  0.00%|
(call)|         3|            0|            0|  0.00%|# <frozen importlib._bootstrap>:231 _verbose_message
  1052|         0|            0|            0|  0.00%|
  1053|         0|            0|            0|  0.00%|
  1054|         0|            0|            0|  0.00%|
  1055|         0|            0|            0|  0.00%|
  1056|         0|            0|            0|  0.00%|
  1057|         0|            0|            0|  0.00%|
  1058|         0|            0|            0|  0.00%|
  1059|         0|            0|            0|  0.00%|
  1060|         0|            0|            0|  0.00%|
  1061|         0|            0|            0|  0.00%|
  1062|         0|            0|            0|  0.00%|
  1063|         0|            0|            0|  0.00%|
  1064|         0|            0|            0|  0.00%|
  1065|         0|            0|            0|  0.00%|
  1066|         0|            0|            0|  0.00%|
  1067|         0|            0|            0|  0.00%|
  1068|         0|            0|            0|  0.00%|
  1069|         0|            0|            0|  0.00%|
  1070|         0|            0|            0|  0.00%|
  1071|         0|            0|            0|  0.00%|
  1072|         0|            0|            0|  0.00%|
  1073|         0|            0|            0|  0.00%|
  1074|         0|            0|            0|  0.00%|
  1075|         0|            0|            0|  0.00%|
  1076|         0|            0|            0|  0.00%|
  1077|         0|            0|            0|  0.00%|
  1078|         0|            0|            0|  0.00%|
  1079|         0|            0|            0|  0.00%|
  1080|         0|            0|            0|  0.00%|
  1081|         0|            0|            0|  0.00%|
  1082|         0|            0|            0|  0.00%|
  1083|         0|            0|            0|  0.00%|
  1084|         0|            0|            0|  0.00%|
  1085|         0|            0|            0|  0.00%|
  1086|         0|            0|            0|  0.00%|
  1087|         0|            0|            0|  0.00%|
  1088|         0|            0|            0|  0.00%|
  1089|         0|            0|            0|  0.00%|
  1090|         0|            0|            0|  0.00%|
  1091|         0|            0|            0|  0.00%|
  1092|         0|            0|            0|  0.00%|
  1093|         0|            0|            0|  0.00%|
  1094|         0|            0|            0|  0.00%|
  1095|        31|            0|            0|  0.00%|
  1096|        31|            0|            0|  0.00%|
  1097|        31|            0|            0|  0.00%|
  1098|         0|            0|            0|  0.00%|
  1099|         0|            0|            0|  0.00%|
  1100|         0|            0|            0|  0.00%|
  1101|         0|            0|            0|  0.00%|
  1102|         0|            0|            0|  0.00%|
  1103|         0|            0|            0|  0.00%|
  1104|         0|            0|            0|  0.00%|
  1105|         0|            0|            0|  0.00%|
  1106|        31|            0|            0|  0.00%|
  1107|         0|            0|            0|  0.00%|
  1108|        62|            0|            0|  0.00%|
(call)|        31|    0.0848188|   0.00273609|  0.15%|# <frozen importlib._bootstrap>:220 _call_with_frames_removed
  1109|        31|            0|            0|  0.00%|
  1110|        62|            0|            0|  0.00%|
(call)|        31|            0|            0|  0.00%|# <frozen importlib._bootstrap>:231 _verbose_message
  1111|        31|   0.00102448|  3.30479e-05|  0.00%|
  1112|        31|            0|            0|  0.00%|
  1113|         0|            0|            0|  0.00%|
  1114|        31|            0|            0|  0.00%|
  1115|         0|            0|            0|  0.00%|
  1116|        31|  0.000985384|  3.17866e-05|  0.00%|
(call)|        31|            0|            0|  0.00%|# <frozen importlib._bootstrap>:220 _call_with_frames_removed
  1117|        62|            0|            0|  0.00%|
(call)|        31|            0|            0|  0.00%|# <frozen importlib._bootstrap>:231 _verbose_message
  1118|        31|            0|            0|  0.00%|
  1119|         0|            0|            0|  0.00%|
  1120|         0|            0|            0|  0.00%|
  1121|         0|            0|            0|  0.00%|
  1122|         0|            0|            0|  0.00%|
  1123|         0|            0|            0|  0.00%|
  1124|         0|            0|            0|  0.00%|
  1125|         0|            0|            0|  0.00%|
  1126|         0|            0|            0|  0.00%|
  1127|         0|            0|            0|  0.00%|
  1128|         0|            0|            0|  0.00%|
  1129|         0|            0|            0|  0.00%|
  1130|         0|            0|            0|  0.00%|
  1131|         0|            0|            0|  0.00%|
  1132|         0|            0|            0|  0.00%|
  1133|         0|            0|            0|  0.00%|
  1134|         0|            0|            0|  0.00%|
  1135|         0|            0|            0|  0.00%|
  1136|         0|            0|            0|  0.00%|
  1137|         0|            0|            0|  0.00%|
  1138|         0|            0|            0|  0.00%|
  1139|         0|            0|            0|  0.00%|
  1140|         0|            0|            0|  0.00%|
  1141|         0|            0|            0|  0.00%|
  1142|         0|            0|            0|  0.00%|
  1143|         0|            0|            0|  0.00%|
  1144|         0|            0|            0|  0.00%|
  1145|         0|            0|            0|  0.00%|
  1146|         0|            0|            0|  0.00%|
  1147|         0|            0|            0|  0.00%|
  1148|         0|            0|            0|  0.00%|
  1149|         0|            0|            0|  0.00%|
  1150|         0|            0|            0|  0.00%|
  1151|         0|            0|            0|  0.00%|
  1152|         0|            0|            0|  0.00%|
  1153|         0|            0|            0|  0.00%|
  1154|         0|            0|            0|  0.00%|
  1155|         0|            0|            0|  0.00%|
  1156|         0|            0|            0|  0.00%|
  1157|         0|            0|            0|  0.00%|
  1158|         0|            0|            0|  0.00%|
  1159|         0|            0|            0|  0.00%|
  1160|         0|            0|            0|  0.00%|
  1161|         0|            0|            0|  0.00%|
  1162|         0|            0|            0|  0.00%|
  1163|         0|            0|            0|  0.00%|
  1164|         0|            0|            0|  0.00%|
  1165|         0|            0|            0|  0.00%|
  1166|         0|            0|            0|  0.00%|
  1167|         0|            0|            0|  0.00%|
  1168|         0|            0|            0|  0.00%|
  1169|         0|            0|            0|  0.00%|
  1170|         0|            0|            0|  0.00%|
  1171|         0|            0|            0|  0.00%|
  1172|         0|            0|            0|  0.00%|
  1173|         0|            0|            0|  0.00%|
  1174|         0|            0|            0|  0.00%|
  1175|         0|            0|            0|  0.00%|
  1176|         0|            0|            0|  0.00%|
  1177|         0|            0|            0|  0.00%|
  1178|         0|            0|            0|  0.00%|
  1179|         0|            0|            0|  0.00%|
  1180|         0|            0|            0|  0.00%|
  1181|         0|            0|            0|  0.00%|
  1182|         0|            0|            0|  0.00%|
  1183|         0|            0|            0|  0.00%|
  1184|         0|            0|            0|  0.00%|
  1185|         0|            0|            0|  0.00%|
  1186|         0|            0|            0|  0.00%|
  1187|         0|            0|            0|  0.00%|
  1188|         0|            0|            0|  0.00%|
  1189|         0|            0|            0|  0.00%|
  1190|         0|            0|            0|  0.00%|
  1191|         0|            0|            0|  0.00%|
  1192|         0|            0|            0|  0.00%|
  1193|         0|            0|            0|  0.00%|
  1194|         0|            0|            0|  0.00%|
  1195|         0|            0|            0|  0.00%|
  1196|         0|            0|            0|  0.00%|
  1197|         0|            0|            0|  0.00%|
  1198|         0|            0|            0|  0.00%|
  1199|         0|            0|            0|  0.00%|
  1200|         0|            0|            0|  0.00%|
  1201|         0|            0|            0|  0.00%|
  1202|         0|            0|            0|  0.00%|
  1203|         0|            0|            0|  0.00%|
  1204|         0|            0|            0|  0.00%|
  1205|         0|            0|            0|  0.00%|
  1206|         0|            0|            0|  0.00%|
  1207|         0|            0|            0|  0.00%|
  1208|         0|            0|            0|  0.00%|
  1209|         0|            0|            0|  0.00%|
  1210|         0|            0|            0|  0.00%|
  1211|         0|            0|            0|  0.00%|
  1212|         0|            0|            0|  0.00%|
  1213|         0|            0|            0|  0.00%|
  1214|         0|            0|            0|  0.00%|
  1215|         0|            0|            0|  0.00%|
  1216|         0|            0|            0|  0.00%|
  1217|         0|            0|            0|  0.00%|
  1218|         0|            0|            0|  0.00%|
  1219|         0|            0|            0|  0.00%|
  1220|         0|            0|            0|  0.00%|
  1221|         0|            0|            0|  0.00%|
  1222|         0|            0|            0|  0.00%|
  1223|         0|            0|            0|  0.00%|
  1224|         0|            0|            0|  0.00%|
  1225|         0|            0|            0|  0.00%|
  1226|         0|            0|            0|  0.00%|
  1227|         0|            0|            0|  0.00%|
  1228|         0|            0|            0|  0.00%|
  1229|         0|            0|            0|  0.00%|
  1230|         0|            0|            0|  0.00%|
  1231|         0|            0|            0|  0.00%|
  1232|         0|            0|            0|  0.00%|
  1233|         0|            0|            0|  0.00%|
  1234|         0|            0|            0|  0.00%|
  1235|         0|            0|            0|  0.00%|
  1236|         0|            0|            0|  0.00%|
  1237|         0|            0|            0|  0.00%|
  1238|         0|            0|            0|  0.00%|
  1239|         0|            0|            0|  0.00%|
  1240|         0|            0|            0|  0.00%|
  1241|         0|            0|            0|  0.00%|
  1242|         0|            0|            0|  0.00%|
  1243|         0|            0|            0|  0.00%|
  1244|         0|            0|            0|  0.00%|
  1245|         0|            0|            0|  0.00%|
  1246|         0|            0|            0|  0.00%|
  1247|         0|            0|            0|  0.00%|
  1248|         0|            0|            0|  0.00%|
  1249|         0|            0|            0|  0.00%|
  1250|         0|            0|            0|  0.00%|
  1251|         0|            0|            0|  0.00%|
  1252|         0|            0|            0|  0.00%|
  1253|         0|            0|            0|  0.00%|
  1254|         0|            0|            0|  0.00%|
  1255|         0|            0|            0|  0.00%|
  1256|         0|            0|            0|  0.00%|
  1257|         0|            0|            0|  0.00%|
  1258|         0|            0|            0|  0.00%|
  1259|        12|            0|            0|  0.00%|
  1260|         0|            0|            0|  0.00%|
  1261|         0|            0|            0|  0.00%|
  1262|        12|            0|            0|  0.00%|
  1263|         0|            0|            0|  0.00%|
  1264|        24|            0|            0|  0.00%|
  1265|        24|            0|            0|  0.00%|
  1266|        24|            0|            0|  0.00%|
(call)|        12|  0.000998497|  8.32081e-05|  0.00%|# <frozen zipimport>:63 __init__
(call)|        12|    0.0040009|  0.000333409|  0.01%|# <frozen importlib._bootstrap_external>:1527 path_hook_for_FileFinder
  1267|        12|            0|            0|  0.00%|
  1268|        12|            0|            0|  0.00%|
  1269|         0|            0|            0|  0.00%|
  1270|         0|            0|            0|  0.00%|
  1271|         0|            0|            0|  0.00%|
  1272|       290|  0.000997066|  3.43816e-06|  0.00%|
  1273|         0|            0|            0|  0.00%|
  1274|         0|            0|            0|  0.00%|
  1275|         0|            0|            0|  0.00%|
  1276|         0|            0|            0|  0.00%|
  1277|         0|            0|            0|  0.00%|
  1278|         0|            0|            0|  0.00%|
  1279|         0|            0|            0|  0.00%|
  1280|       290|   0.00100255|  3.45707e-06|  0.00%|
  1281|         0|            0|            0|  0.00%|
  1282|         0|            0|            0|  0.00%|
  1283|         0|            0|            0|  0.00%|
  1284|         0|            0|            0|  0.00%|
  1285|         0|            0|            0|  0.00%|
  1286|         0|            0|            0|  0.00%|
  1287|       290|   0.00199604|   6.8829e-06|  0.00%|
  1288|       290|            0|            0|  0.00%|
  1289|        12|            0|            0|  0.00%|
  1290|        12|            0|            0|  0.00%|
(call)|        12|    0.0049994|  0.000416617|  0.01%|# <frozen importlib._bootstrap_external>:1259 _path_hooks
  1291|        12|            0|            0|  0.00%|
  1292|       290|            0|            0|  0.00%|
  1293|         0|            0|            0|  0.00%|
  1294|         0|            0|            0|  0.00%|
  1295|         0|            0|            0|  0.00%|
  1296|         0|            0|            0|  0.00%|
  1297|         0|            0|            0|  0.00%|
  1298|         0|            0|            0|  0.00%|
  1299|         0|            0|            0|  0.00%|
  1300|         0|            0|            0|  0.00%|
  1301|         0|            0|            0|  0.00%|
  1302|         0|            0|            0|  0.00%|
  1303|         0|            0|            0|  0.00%|
  1304|         0|            0|            0|  0.00%|
  1305|         0|            0|            0|  0.00%|
  1306|         0|            0|            0|  0.00%|
  1307|         0|            0|            0|  0.00%|
  1308|         0|            0|            0|  0.00%|
  1309|       130|            0|            0|  0.00%|
  1310|         0|            0|            0|  0.00%|
  1311|         0|            0|            0|  0.00%|
  1312|         0|            0|            0|  0.00%|
  1313|         0|            0|            0|  0.00%|
  1314|       130|            0|            0|  0.00%|
  1315|       304|   0.00103712|  3.41158e-06|  0.00%|
  1316|       290|  0.000999928|  3.44803e-06|  0.00%|
  1317|         0|            0|            0|  0.00%|
  1318|       290|   0.00300026|  1.03457e-05|  0.01%|
(call)|       290|   0.00899506|  3.10174e-05|  0.02%|# <frozen importlib._bootstrap_external>:1272 _path_importer_cache
  1319|       290|            0|            0|  0.00%|
  1320|       254|            0|            0|  0.00%|
  1321|       254|  0.000999928|  3.93672e-06|  0.00%|
(call)|       254|     0.132108|  0.000520109|  0.24%|# <frozen importlib._bootstrap_external>:1438 find_spec
  1322|         0|            0|            0|  0.00%|
  1323|         0|            0|            0|  0.00%|
  1324|       254|            0|            0|  0.00%|
  1325|       138|            0|            0|  0.00%|
  1326|       116|            0|            0|  0.00%|
  1327|       116|            0|            0|  0.00%|
  1328|         0|            0|            0|  0.00%|
  1329|         0|            0|            0|  0.00%|
  1330|         0|            0|            0|  0.00%|
  1331|         0|            0|            0|  0.00%|
  1332|         0|            0|            0|  0.00%|
  1333|         0|            0|            0|  0.00%|
  1334|         0|            0|            0|  0.00%|
  1335|         0|            0|            0|  0.00%|
  1336|         0|            0|            0|  0.00%|
  1337|        14|            0|            0|  0.00%|
(call)|        14|            0|            0|  0.00%|# <frozen importlib._bootstrap>:351 __init__
  1338|        14|            0|            0|  0.00%|
  1339|        14|            0|            0|  0.00%|
  1340|         0|            0|            0|  0.00%|
  1341|       130|  0.000999689|  7.68992e-06|  0.00%|
  1342|         0|            0|            0|  0.00%|
  1343|         0|            0|            0|  0.00%|
  1344|         0|            0|            0|  0.00%|
  1345|         0|            0|            0|  0.00%|
  1346|         0|            0|            0|  0.00%|
  1347|       130|  0.000954628|  7.34329e-06|  0.00%|
  1348|        50|            0|            0|  0.00%|
  1349|       130|   0.00196552|  1.51194e-05|  0.00%|
(call)|       130|      0.14714|   0.00113185|  0.26%|# <frozen importlib._bootstrap_external>:1309 _get_spec
  1350|       130|            0|            0|  0.00%|
  1351|         0|            0|            0|  0.00%|
  1352|       130|            0|            0|  0.00%|
  1353|        14|            0|            0|  0.00%|
  1354|        14|            0|            0|  0.00%|
  1355|         0|            0|            0|  0.00%|
  1356|         0|            0|            0|  0.00%|
  1357|         0|            0|            0|  0.00%|
  1358|         0|            0|            0|  0.00%|
  1359|         0|            0|            0|  0.00%|
  1360|         0|            0|            0|  0.00%|
  1361|        14|            0|            0|  0.00%|
  1362|         0|            0|            0|  0.00%|
  1363|       116|            0|            0|  0.00%|
  1364|         0|            0|            0|  0.00%|
  1365|         0|            0|            0|  0.00%|
  1366|         0|            0|            0|  0.00%|
  1367|         0|            0|            0|  0.00%|
  1368|         0|            0|            0|  0.00%|
  1369|         0|            0|            0|  0.00%|
  1370|         0|            0|            0|  0.00%|
  1371|         0|            0|            0|  0.00%|
  1372|         0|            0|            0|  0.00%|
  1373|         0|            0|            0|  0.00%|
  1374|         0|            0|            0|  0.00%|
  1375|         0|            0|            0|  0.00%|
  1376|         0|            0|            0|  0.00%|
  1377|         0|            0|            0|  0.00%|
  1378|         0|            0|            0|  0.00%|
  1379|         0|            0|            0|  0.00%|
  1380|         0|            0|            0|  0.00%|
  1381|         0|            0|            0|  0.00%|
  1382|         0|            0|            0|  0.00%|
  1383|         0|            0|            0|  0.00%|
  1384|         0|            0|            0|  0.00%|
  1385|         0|            0|            0|  0.00%|
  1386|         0|            0|            0|  0.00%|
  1387|         0|            0|            0|  0.00%|
  1388|         0|            0|            0|  0.00%|
  1389|         0|            0|            0|  0.00%|
  1390|         0|            0|            0|  0.00%|
  1391|         0|            0|            0|  0.00%|
  1392|         0|            0|            0|  0.00%|
  1393|         0|            0|            0|  0.00%|
  1394|         0|            0|            0|  0.00%|
  1395|         0|            0|            0|  0.00%|
  1396|         0|            0|            0|  0.00%|
  1397|         0|            0|            0|  0.00%|
  1398|         0|            0|            0|  0.00%|
  1399|         0|            0|            0|  0.00%|
  1400|         0|            0|            0|  0.00%|
  1401|        12|            0|            0|  0.00%|
  1402|         0|            0|            0|  0.00%|
  1403|         0|            0|            0|  0.00%|
  1404|         0|            0|            0|  0.00%|
  1405|        12|            0|            0|  0.00%|
  1406|        48|   0.00100112|  2.08567e-05|  0.00%|
  1407|       228|  0.000999451|  4.38356e-06|  0.00%|
(call)|        96|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:1407 <genexpr>
  1408|        12|            0|            0|  0.00%|
  1409|         0|            0|            0|  0.00%|
  1410|        12|            0|            0|  0.00%|
  1411|        12|            0|            0|  0.00%|
  1412|        12|            0|            0|  0.00%|
  1413|        12|            0|            0|  0.00%|
  1414|         0|            0|            0|  0.00%|
  1415|         0|            0|            0|  0.00%|
  1416|         0|            0|            0|  0.00%|
  1417|         0|            0|            0|  0.00%|
  1418|         0|            0|            0|  0.00%|
  1419|         0|            0|            0|  0.00%|
  1420|         0|            0|            0|  0.00%|
  1421|         0|            0|            0|  0.00%|
  1422|         0|            0|            0|  0.00%|
  1423|         0|            0|            0|  0.00%|
  1424|         0|            0|            0|  0.00%|
  1425|         0|            0|            0|  0.00%|
  1426|         0|            0|            0|  0.00%|
  1427|         0|            0|            0|  0.00%|
  1428|         0|            0|            0|  0.00%|
  1429|         0|            0|            0|  0.00%|
  1430|         0|            0|            0|  0.00%|
  1431|         0|            0|            0|  0.00%|
  1432|         0|            0|            0|  0.00%|
  1433|       116|            0|            0|  0.00%|
  1434|       116|  0.000999689|  8.61801e-06|  0.00%|
(call)|        85|  0.000999928|  1.17639e-05|  0.00%|# <frozen importlib._bootstrap_external>:946 __init__
(call)|        31|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:1095 __init__
  1435|       232|  0.000947475|  4.08395e-06|  0.00%|
(call)|       116|   0.00505161|  4.35484e-05|  0.01%|# <frozen importlib._bootstrap_external>:636 spec_from_file_location
  1436|       116|  0.000965595|   8.3241e-06|  0.00%|
  1437|         0|            0|            0|  0.00%|
  1438|       254|            0|            0|  0.00%|
  1439|         0|            0|            0|  0.00%|
  1440|         0|            0|            0|  0.00%|
  1441|         0|            0|            0|  0.00%|
  1442|         0|            0|            0|  0.00%|
  1443|       254|    0.0020349|  8.01143e-06|  0.00%|
  1444|       254|  0.000995398|  3.91889e-06|  0.00%|
  1445|       254|  0.000980139|  3.85881e-06|  0.00%|
  1446|       254|   0.00200009|  7.87438e-06|  0.00%|
(call)|       254|    0.0148556|  5.84867e-05|  0.03%|# <frozen importlib._bootstrap_external>:80 _path_stat
  1447|         0|            0|            0|  0.00%|
  1448|         0|            0|            0|  0.00%|
  1449|       254|   0.00100017|  3.93766e-06|  0.00%|
  1450|        12|            0|            0|  0.00%|
(call)|        12|   0.00595617|  0.000496348|  0.01%|# <frozen importlib._bootstrap_external>:1486 _fill_cache
  1451|        12|            0|            0|  0.00%|
  1452|         0|            0|            0|  0.00%|
  1453|       254|   0.00199771|    7.865e-06|  0.00%|
(call)|       254|   0.00298715|  1.17604e-05|  0.01%|# <frozen importlib._bootstrap_external>:36 _relax_case
  1454|         0|            0|            0|  0.00%|
  1455|         0|            0|            0|  0.00%|
  1456|         0|            0|            0|  0.00%|
  1457|       254|  0.000997543|  3.92734e-06|  0.00%|
  1458|       254|   0.00100064|  3.93954e-06|  0.00%|
  1459|         0|            0|            0|  0.00%|
  1460|       254|            0|            0|  0.00%|
  1461|        13|            0|            0|  0.00%|
(call)|        13|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:62 _path_join
  1462|        42|            0|            0|  0.00%|
  1463|        41|            0|            0|  0.00%|
  1464|        41|            0|            0|  0.00%|
(call)|        41|  0.000962734|  2.34813e-05|  0.00%|# <frozen importlib._bootstrap_external>:62 _path_join
  1465|        41|            0|            0|  0.00%|
(call)|        41|   0.00503516|  0.000122809|  0.01%|# <frozen importlib._bootstrap_external>:99 _path_isfile
  1466|        12|            0|            0|  0.00%|
(call)|        12|   0.00200081|  0.000166734|  0.00%|# <frozen importlib._bootstrap_external>:1433 _get_spec
  1467|         0|            0|            0|  0.00%|
  1468|         0|            0|            0|  0.00%|
  1469|         0|            0|            0|  0.00%|
  1470|         1|            0|            0|  0.00%|
(call)|         1|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:104 _path_isdir
  1471|         0|            0|            0|  0.00%|
  1472|      1082|   0.00700045|  6.46991e-06|  0.01%|
  1473|       944|    0.0119863|  1.26973e-05|  0.02%|
(call)|       944|     0.032244|  3.41567e-05|  0.06%|# <frozen importlib._bootstrap_external>:62 _path_join
  1474|       944|     0.013108|  1.38856e-05|  0.02%|
(call)|       944|   0.00602889|  6.38654e-06|  0.01%|# <frozen importlib._bootstrap>:231 _verbose_message
  1475|       944|            0|            0|  0.00%|
  1476|       104|    0.0010004|  9.61927e-06|  0.00%|
(call)|       104|   0.00897312|    8.628e-05|  0.02%|# <frozen importlib._bootstrap_external>:99 _path_isfile
  1477|       208|  0.000998497|  4.80047e-06|  0.00%|
(call)|       104|   0.00696349|  6.69566e-05|  0.01%|# <frozen importlib._bootstrap_external>:1433 _get_spec
  1478|       104|            0|            0|  0.00%|
  1479|       138|    0.0010004|  7.24931e-06|  0.00%|
  1480|         0|            0|            0|  0.00%|
  1481|         0|            0|            0|  0.00%|
  1482|         0|            0|            0|  0.00%|
  1483|         0|            0|            0|  0.00%|
  1484|       138|            0|            0|  0.00%|
  1485|         0|            0|            0|  0.00%|
  1486|        12|            0|            0|  0.00%|
  1487|         0|            0|            0|  0.00%|
  1488|        12|            0|            0|  0.00%|
  1489|        12|  0.000997782|  8.31485e-05|  0.00%|
  1490|        12|  0.000963688|  8.03073e-05|  0.00%|
  1491|         0|            0|            0|  0.00%|
  1492|         0|            0|            0|  0.00%|
  1493|         0|            0|            0|  0.00%|
  1494|         0|            0|            0|  0.00%|
  1495|         0|            0|            0|  0.00%|
  1496|         0|            0|            0|  0.00%|
  1497|        12|            0|            0|  0.00%|
  1498|         0|            0|            0|  0.00%|
  1499|         0|            0|            0|  0.00%|
  1500|         0|            0|            0|  0.00%|
  1501|         0|            0|            0|  0.00%|
  1502|         0|            0|            0|  0.00%|
  1503|         0|            0|            0|  0.00%|
  1504|         0|            0|            0|  0.00%|
  1505|        12|            0|            0|  0.00%|
  1506|       248|  0.000999928|  4.03197e-06|  0.00%|
  1507|       236|  0.000964642|  4.08746e-06|  0.00%|
  1508|       236|   0.00203013|  8.60226e-06|  0.00%|
  1509|       207|            0|            0|  0.00%|
  1510|         0|            0|            0|  0.00%|
  1511|        29|            0|            0|  0.00%|
  1512|       236|            0|            0|  0.00%|
  1513|        12|            0|            0|  0.00%|
  1514|        12|            0|            0|  0.00%|
  1515|       272|            0|            0|  0.00%|
(call)|        12|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:1515 <setcomp>
  1516|         0|            0|            0|  0.00%|
  1517|         0|            0|            0|  0.00%|
  1518|         0|            0|            0|  0.00%|
  1519|         0|            0|            0|  0.00%|
  1520|         0|            0|            0|  0.00%|
  1521|         0|            0|            0|  0.00%|
  1522|         0|            0|            0|  0.00%|
  1523|         0|            0|            0|  0.00%|
  1524|         0|            0|            0|  0.00%|
  1525|         0|            0|            0|  0.00%|
  1526|         0|            0|            0|  0.00%|
  1527|        12|            0|            0|  0.00%|
  1528|         0|            0|            0|  0.00%|
  1529|        12|            0|            0|  0.00%|
(call)|        12|   0.00200033|  0.000166694|  0.00%|# <frozen importlib._bootstrap_external>:104 _path_isdir
  1530|         0|            0|            0|  0.00%|
  1531|        12|            0|            0|  0.00%|
(call)|        12|   0.00200057|  0.000166714|  0.00%|# <frozen importlib._bootstrap_external>:1401 __init__
File: <frozen importlib._bootstrap>
File duration: 0.14641s (0.26%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         0|            0|            0|  0.00%|
     2|         0|            0|            0|  0.00%|
     3|         0|            0|            0|  0.00%|
     4|         0|            0|            0|  0.00%|
     5|         0|            0|            0|  0.00%|
     6|         0|            0|            0|  0.00%|
     7|         0|            0|            0|  0.00%|
     8|         0|            0|            0|  0.00%|
     9|         0|            0|            0|  0.00%|
    10|         0|            0|            0|  0.00%|
    11|         0|            0|            0|  0.00%|
    12|         0|            0|            0|  0.00%|
    13|         0|            0|            0|  0.00%|
    14|         0|            0|            0|  0.00%|
    15|         0|            0|            0|  0.00%|
    16|         0|            0|            0|  0.00%|
    17|         0|            0|            0|  0.00%|
    18|         0|            0|            0|  0.00%|
    19|         0|            0|            0|  0.00%|
    20|         0|            0|            0|  0.00%|
    21|         0|            0|            0|  0.00%|
    22|         0|            0|            0|  0.00%|
    23|         0|            0|            0|  0.00%|
    24|         0|            0|            0|  0.00%|
    25|         0|            0|            0|  0.00%|
    26|         0|            0|            0|  0.00%|
    27|         0|            0|            0|  0.00%|
    28|         0|            0|            0|  0.00%|
    29|         0|            0|            0|  0.00%|
    30|         0|            0|            0|  0.00%|
    31|         0|            0|            0|  0.00%|
    32|         0|            0|            0|  0.00%|
    33|         0|            0|            0|  0.00%|
    34|         0|            0|            0|  0.00%|
    35|        85|            0|            0|  0.00%|
    36|        85|            0|            0|  0.00%|
    37|         0|            0|            0|  0.00%|
    38|         0|            0|            0|  0.00%|
    39|         0|            0|            0|  0.00%|
    40|         0|            0|            0|  0.00%|
    41|         0|            0|            0|  0.00%|
    42|         0|            0|            0|  0.00%|
    43|         0|            0|            0|  0.00%|
    44|         0|            0|            0|  0.00%|
    45|         0|            0|            0|  0.00%|
    46|         0|            0|            0|  0.00%|
    47|         0|            0|            0|  0.00%|
    48|         0|            0|            0|  0.00%|
    49|         0|            0|            0|  0.00%|
    50|         0|            0|            0|  0.00%|
    51|         0|            0|            0|  0.00%|
    52|         0|            0|            0|  0.00%|
    53|         0|            0|            0|  0.00%|
    54|         0|            0|            0|  0.00%|
    55|         0|            0|            0|  0.00%|
    56|         0|            0|            0|  0.00%|
    57|         0|            0|            0|  0.00%|
    58|       142|   0.00100088|  7.04846e-06|  0.00%|
    59|       142|  0.000998735|  7.03335e-06|  0.00%|
    60|       142|            0|            0|  0.00%|
    61|       142|            0|            0|  0.00%|
    62|       142|            0|            0|  0.00%|
    63|       142|  0.000962019|  6.77478e-06|  0.00%|
    64|       142|            0|            0|  0.00%|
    65|         0|            0|            0|  0.00%|
    66|         0|            0|            0|  0.00%|
    67|         0|            0|            0|  0.00%|
    68|         0|            0|            0|  0.00%|
    69|         0|            0|            0|  0.00%|
    70|         0|            0|            0|  0.00%|
    71|         0|            0|            0|  0.00%|
    72|         0|            0|            0|  0.00%|
    73|         0|            0|            0|  0.00%|
    74|         0|            0|            0|  0.00%|
    75|         0|            0|            0|  0.00%|
    76|         0|            0|            0|  0.00%|
    77|         0|            0|            0|  0.00%|
    78|         0|            0|            0|  0.00%|
    79|         0|            0|            0|  0.00%|
    80|         0|            0|            0|  0.00%|
    81|         0|            0|            0|  0.00%|
    82|         0|            0|            0|  0.00%|
    83|         0|            0|            0|  0.00%|
    84|         0|            0|            0|  0.00%|
    85|         0|            0|            0|  0.00%|
    86|         0|            0|            0|  0.00%|
    87|       261|   0.00203347|  7.79108e-06|  0.00%|
    88|         0|            0|            0|  0.00%|
    89|         0|            0|            0|  0.00%|
    90|         0|            0|            0|  0.00%|
    91|         0|            0|            0|  0.00%|
    92|         0|            0|            0|  0.00%|
    93|       261|    0.0010016|  3.83753e-06|  0.00%|
    94|       261|            0|            0|  0.00%|
    95|       261|            0|            0|  0.00%|
    96|         0|            0|            0|  0.00%|
    97|       261|    0.0010004|  3.83297e-06|  0.00%|
    98|       261|  0.000997066|  3.82018e-06|  0.00%|
    99|       261|  0.000999928|  3.83114e-06|  0.00%|
   100|       261|   0.00100279|   3.8421e-06|  0.00%|
   101|       522|  0.000965595|   1.8498e-06|  0.00%|
   102|         0|            0|            0|  0.00%|
   103|         0|            0|            0|  0.00%|
   104|         0|            0|            0|  0.00%|
   105|         0|            0|            0|  0.00%|
   106|         0|            0|            0|  0.00%|
   107|         0|            0|            0|  0.00%|
   108|         0|            0|            0|  0.00%|
   109|         0|            0|            0|  0.00%|
   110|       261|            0|            0|  0.00%|
   111|         0|            0|            0|  0.00%|
   112|       261|   0.00100088|  3.83479e-06|  0.00%|
   113|       261|            0|            0|  0.00%|
   114|       261|            0|            0|  0.00%|
   115|       261|            0|            0|  0.00%|
   116|         0|            0|            0|  0.00%|
   117|       261|  0.000995398|  3.81378e-06|  0.00%|
   118|       261|  0.000999451|  3.82931e-06|  0.00%|
   119|       261|            0|            0|  0.00%|
   120|       142|            0|            0|  0.00%|
   121|       142|            0|            0|  0.00%|
   122|         0|            0|            0|  0.00%|
   123|         0|            0|            0|  0.00%|
   124|         0|            0|            0|  0.00%|
   125|         0|            0|            0|  0.00%|
   126|         0|            0|            0|  0.00%|
   127|         0|            0|            0|  0.00%|
   128|         0|            0|            0|  0.00%|
   129|         0|            0|            0|  0.00%|
   130|         0|            0|            0|  0.00%|
   131|         0|            0|            0|  0.00%|
   132|         0|            0|            0|  0.00%|
   133|         0|            0|            0|  0.00%|
   134|         0|            0|            0|  0.00%|
   135|         0|            0|            0|  0.00%|
   136|         0|            0|            0|  0.00%|
   137|         0|            0|            0|  0.00%|
   138|         0|            0|            0|  0.00%|
   139|         0|            0|            0|  0.00%|
   140|         0|            0|            0|  0.00%|
   141|         0|            0|            0|  0.00%|
   142|         0|            0|            0|  0.00%|
   143|         0|            0|            0|  0.00%|
   144|         0|            0|            0|  0.00%|
   145|         0|            0|            0|  0.00%|
   146|         0|            0|            0|  0.00%|
   147|         0|            0|            0|  0.00%|
   148|         0|            0|            0|  0.00%|
   149|         0|            0|            0|  0.00%|
   150|         0|            0|            0|  0.00%|
   151|         0|            0|            0|  0.00%|
   152|       142|            0|            0|  0.00%|
   153|       142|            0|            0|  0.00%|
   154|       142|            0|            0|  0.00%|
   155|         0|            0|            0|  0.00%|
   156|       142|            0|            0|  0.00%|
   157|       142|   0.00204635|  1.44109e-05|  0.00%|
(call)|       142|   0.00599337|  4.22068e-05|  0.01%|# <frozen importlib._bootstrap>:166 _get_module_lock
   158|       142|   0.00302768|  2.13217e-05|  0.01%|
(call)|       142|   0.00700045|  4.92989e-05|  0.01%|# <frozen importlib._bootstrap>:87 acquire
   159|         0|            0|            0|  0.00%|
   160|       142|            0|            0|  0.00%|
   161|       142|   0.00200057|  1.40885e-05|  0.00%|
(call)|       142|   0.00299573|  2.10967e-05|  0.01%|# <frozen importlib._bootstrap>:112 release
   162|         0|            0|            0|  0.00%|
   163|         0|            0|            0|  0.00%|
   164|         0|            0|            0|  0.00%|
   165|         0|            0|            0|  0.00%|
   166|       261|            0|            0|  0.00%|
   167|         0|            0|            0|  0.00%|
   168|         0|            0|            0|  0.00%|
   169|         0|            0|            0|  0.00%|
   170|         0|            0|            0|  0.00%|
   171|         0|            0|            0|  0.00%|
   172|       261|  0.000994682|  3.81104e-06|  0.00%|
   173|       261|            0|            0|  0.00%|
   174|       261|            0|            0|  0.00%|
   175|       261|   0.00100017|  3.83205e-06|  0.00%|
   176|       142|            0|            0|  0.00%|
   177|       142|            0|            0|  0.00%|
   178|         0|            0|            0|  0.00%|
   179|       261|            0|            0|  0.00%|
   180|       142|            0|            0|  0.00%|
   181|         0|            0|            0|  0.00%|
   182|         0|            0|            0|  0.00%|
   183|       142|            0|            0|  0.00%|
(call)|       142|   0.00296164|  2.08566e-05|  0.01%|# <frozen importlib._bootstrap>:58 __init__
   184|         0|            0|            0|  0.00%|
   185|       284|            0|            0|  0.00%|
   186|       142|            0|            0|  0.00%|
   187|       142|            0|            0|  0.00%|
   188|         0|            0|            0|  0.00%|
   189|         0|            0|            0|  0.00%|
   190|         0|            0|            0|  0.00%|
   191|       142|            0|            0|  0.00%|
   192|       142|   0.00100017|  7.04342e-06|  0.00%|
   193|         0|            0|            0|  0.00%|
   194|       142|  0.000999689|  7.04006e-06|  0.00%|
   195|         0|            0|            0|  0.00%|
   196|       142|            0|            0|  0.00%|
   197|         0|            0|            0|  0.00%|
   198|       261|    0.0010004|  3.83297e-06|  0.00%|
   199|         0|            0|            0|  0.00%|
   200|       261|   0.00203705|  7.80478e-06|  0.00%|
   201|         0|            0|            0|  0.00%|
   202|         0|            0|            0|  0.00%|
   203|       119|            0|            0|  0.00%|
   204|         0|            0|            0|  0.00%|
   205|         0|            0|            0|  0.00%|
   206|         0|            0|            0|  0.00%|
   207|         0|            0|            0|  0.00%|
   208|         0|            0|            0|  0.00%|
   209|       119|            0|            0|  0.00%|
(call)|       119|   0.00200057|  1.68115e-05|  0.00%|# <frozen importlib._bootstrap>:166 _get_module_lock
   210|       119|            0|            0|  0.00%|
   211|       119|   0.00298405|   2.5076e-05|  0.01%|
(call)|       119|    0.0010004|  8.40676e-06|  0.00%|# <frozen importlib._bootstrap>:87 acquire
   212|         0|            0|            0|  0.00%|
   213|         0|            0|            0|  0.00%|
   214|         0|            0|            0|  0.00%|
   215|         0|            0|            0|  0.00%|
   216|         0|            0|            0|  0.00%|
   217|       119|   0.00103521|  8.69927e-06|  0.00%|
(call)|       119|            0|            0|  0.00%|# <frozen importlib._bootstrap>:112 release
   218|         0|            0|            0|  0.00%|
   219|         0|            0|            0|  0.00%|
   220|       180|            0|            0|  0.00%|
   221|         0|            0|            0|  0.00%|
   222|         0|            0|            0|  0.00%|
   223|         0|            0|            0|  0.00%|
   224|         0|            0|            0|  0.00%|
   225|         0|            0|            0|  0.00%|
   226|         0|            0|            0|  0.00%|
   227|         0|            0|            0|  0.00%|
   228|       180|    0.0325272|  0.000180707|  0.06%|
(call)|        22|     0.227615|    0.0103462|  0.41%|# <frozen importlib._bootstrap>:1002 _find_and_load
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\version.py:21 <module>
(call)|        75|   0.00500417|  6.67222e-05|  0.01%|# <frozen importlib._bootstrap>:203 _lock_unlock_module
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\compat.py:2 <module>
(call)|         1|    0.0320385|    0.0320385|  0.06%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\colordict.py:21 <module>
(call)|         1|  0.000997782|  0.000997782|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\cursors.py:21 <module>
(call)|         1|   0.00700068|   0.00700068|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:21 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\traceback.py:1 <module>
(call)|         1|   0.00404978|   0.00404978|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\queue.py:1 <module>
(call)|         1|    0.0119801|    0.0119801|  0.02%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\threads\__init__.py:1 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sysfont.py:21 <module>
(call)|         1|   0.00105023|   0.00105023|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\surfarray.py:21 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sndarray.py:21 <module>
(call)|         1|     0.149004|     0.149004|  0.27%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\__init__.py:21 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\locals.py:22 <module>
(call)|         1|            0|            0|  0.00%|# .\constants.py:1 <module>
(call)|         1|            0|            0|  0.00%|# .\boss_bullet.py:1 <module>
(call)|         1|   0.00599909|   0.00599909|  0.01%|# .\player.py:1 <module>
(call)|         1|            0|            0|  0.00%|# .\level_1_design.py:1 <module>
(call)|         1|    0.0380127|    0.0380127|  0.07%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\string.py:1 <module>
(call)|         1|     0.102968|     0.102968|  0.18%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\logging\__init__.py:17 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\xml\__init__.py:1 <module>
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\xml\etree\__init__.py:1 <module>
(call)|         1|    0.0200443|    0.0200443|  0.04%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\xml\etree\ElementPath.py:59 <module>
(call)|         1|   0.00500393|   0.00500393|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\copy.py:1 <module>
(call)|         1|    0.0450027|    0.0450027|  0.08%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\xml\etree\ElementTree.py:1 <module>
(call)|         1|     0.062989|     0.062989|  0.11%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pytmx\pytmx.py:2 <module>
(call)|         1|  0.000998974|  0.000998974|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pytmx\util_pygame.py:2 <module>
(call)|         1|     0.176998|     0.176998|  0.32%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pytmx\__init__.py:2 <module>
(call)|         1|            0|            0|  0.00%|# .\block.py:2 <module>
(call)|         1|            0|            0|  0.00%|# .\npc.py:1 <module>
(call)|         1|     0.189034|     0.189034|  0.34%|# .\level.py:1 <module>
(call)|         1|            0|            0|  0.00%|# .\level_2_design.py:1 <module>
(call)|         1|            0|            0|  0.00%|# .\level_3_design.py:1 <module>
(call)|         1|            0|            0|  0.00%|# .\game_over.py:1 <module>
(call)|         1|   0.00799823|   0.00799823|  0.01%|# .\level_three.py:1 <module>
(call)|         1|    0.0190027|    0.0190027|  0.03%|# .\level_two.py:1 <module>
(call)|         1|      0.22895|      0.22895|  0.41%|# .\level_one.py:1 <module>
(call)|         1|     0.233966|     0.233966|  0.42%|# .\intro.py:1 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\__future__.py:1 <module>
(call)|         1|   0.00103593|   0.00103593|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\profile.py:9 <module>
(call)|         1|    0.0109525|    0.0109525|  0.02%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\dataclasses.py:1 <module>
(call)|         1|    0.0310352|    0.0310352|  0.06%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\pstats.py:1 <module>
(call)|         1|   0.00100064|   0.00100064|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\timeit.py:3 <module>
(call)|         1|   0.00400019|   0.00400019|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\sysconfig.py:1 <module>
(call)|         1|   0.00404644|   0.00404644|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\_compat_pickle.py:9 <module>
(call)|         1|    0.0297713|    0.0297713|  0.05%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\pickle.py:1 <module>
(call)|         1|    0.0430493|    0.0430493|  0.08%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\trace.py:30 <module>
(call)|         1|   0.00145364|   0.00145364|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\cProfile.py:3 <module>
(call)|         1|     0.114454|     0.114454|  0.20%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\profilehooks.py:1 <module>
(call)|         1|    0.0170319|    0.0170319|  0.03%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\datetime.py:1 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\xml\parsers\__init__.py:1 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\xml\parsers\expat.py:1 <module>
(call)|         1|    0.0749993|    0.0749993|  0.13%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\plistlib.py:1 <module>
(call)|         1|  0.000998974|  0.000998974|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\errors.py:5 <module>
(call)|         1|   0.00300026|   0.00300026|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\quoprimime.py:5 <module>
(call)|         1|    0.0010004|    0.0010004|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\base64.py:3 <module>
(call)|         1|   0.00500107|   0.00500107|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\base64mime.py:5 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\quopri.py:3 <module>
(call)|         1|   0.00500011|   0.00500011|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\encoders.py:5 <module>
(call)|         1|   0.00900245|   0.00900245|  0.02%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\charset.py:5 <module>
(call)|         1|    0.0621059|    0.0621059|  0.11%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\header.py:5 <module>
(call)|         1|   0.00295019|   0.00295019|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\calendar.py:1 <module>
(call)|         1|   0.00795078|   0.00795078|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\_parseaddr.py:4 <module>
(call)|         1|    0.0259979|    0.0259979|  0.05%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\utils.py:5 <module>
(call)|         1|    0.0950587|    0.0950587|  0.17%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\_policybase.py:1 <module>
(call)|         1|     0.124056|     0.124056|  0.22%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\feedparser.py:5 <module>
(call)|         1|     0.126057|     0.126057|  0.22%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\email\parser.py:5 <module>
(call)|         1|     0.071008|     0.071008|  0.13%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\textwrap.py:1 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\extern\__init__.py:1 <module>
(call)|         1|    0.0179989|    0.0179989|  0.03%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\six.py:1 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\ctypes\_endian.py:1 <module>
(call)|         1|    0.0109997|    0.0109997|  0.02%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\ctypes\__init__.py:1 <module>
(call)|         1|    0.0210001|    0.0210001|  0.04%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\appdirs.py:6 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\packaging\__about__.py:4 <module>
(call)|         1|   0.00300026|   0.00300026|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\packaging\__init__.py:4 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\packaging\_structures.py:4 <module>
(call)|         1|     0.119999|     0.119999|  0.21%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\packaging\version.py:4 <module>
(call)|         1|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\packaging\_compat.py:4 <module>
(call)|         1|     0.484002|     0.484002|  0.86%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\packaging\specifiers.py:4 <module>
(call)|         1|  0.000999689|  0.000999689|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\pprint.py:11 <module>
(call)|         1|     0.401999|     0.401999|  0.72%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\pyparsing.py:26 <module>
(call)|         1|    0.0199993|    0.0199993|  0.04%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\packaging\markers.py:4 <module>
(call)|         1|     0.898077|     0.898077|  1.60%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\packaging\requirements.py:4 <module>
(call)|         1|      2.35619|      2.35619|  4.19%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\__init__.py:2 <module>
(call)|         1|      2.36819|      2.36819|  4.22%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\pkgdata.py:1 <module>
   229|         0|            0|            0|  0.00%|
   230|         0|            0|            0|  0.00%|
   231|      1302|   0.00400305|  3.07454e-06|  0.01%|
   232|         0|            0|            0|  0.00%|
   233|      1302|   0.00402522|  3.09157e-06|  0.01%|
   234|         0|            0|            0|  0.00%|
   235|         0|            0|            0|  0.00%|
   236|         0|            0|            0|  0.00%|
   237|         0|            0|            0|  0.00%|
   238|         0|            0|            0|  0.00%|
   239|         0|            0|            0|  0.00%|
   240|         0|            0|            0|  0.00%|
   241|         7|            0|            0|  0.00%|
   242|         7|            0|            0|  0.00%|
   243|         0|            0|            0|  0.00%|
   244|         0|            0|            0|  0.00%|
   245|         7|            0|            0|  0.00%|
(call)|         7|            0|            0|  0.00%|# <frozen importlib._bootstrap>:782 is_package
   246|         0|            0|            0|  0.00%|
   247|         0|            0|            0|  0.00%|
   248|         0|            0|            0|  0.00%|
   249|         0|            0|            0|  0.00%|
   250|         0|            0|            0|  0.00%|
   251|         0|            0|            0|  0.00%|
   252|         0|            0|            0|  0.00%|
   253|         0|            0|            0|  0.00%|
   254|         0|            0|            0|  0.00%|
   255|         0|            0|            0|  0.00%|
   256|         0|            0|            0|  0.00%|
   257|         0|            0|            0|  0.00%|
   258|         0|            0|            0|  0.00%|
   259|         0|            0|            0|  0.00%|
   260|         0|            0|            0|  0.00%|
   261|         0|            0|            0|  0.00%|
   262|         0|            0|            0|  0.00%|
   263|         0|            0|            0|  0.00%|
   264|         0|            0|            0|  0.00%|
   265|         0|            0|            0|  0.00%|
   266|         0|            0|            0|  0.00%|
   267|         0|            0|            0|  0.00%|
   268|         0|            0|            0|  0.00%|
   269|         0|            0|            0|  0.00%|
   270|         0|            0|            0|  0.00%|
   271|         0|            0|            0|  0.00%|
   272|         0|            0|            0|  0.00%|
   273|         0|            0|            0|  0.00%|
   274|         0|            0|            0|  0.00%|
   275|         0|            0|            0|  0.00%|
   276|         0|            0|            0|  0.00%|
   277|         0|            0|            0|  0.00%|
   278|         0|            0|            0|  0.00%|
   279|         0|            0|            0|  0.00%|
   280|         0|            0|            0|  0.00%|
   281|         0|            0|            0|  0.00%|
   282|         0|            0|            0|  0.00%|
   283|         0|            0|            0|  0.00%|
   284|         0|            0|            0|  0.00%|
   285|         0|            0|            0|  0.00%|
   286|         0|            0|            0|  0.00%|
   287|         0|            0|            0|  0.00%|
   288|         0|            0|            0|  0.00%|
   289|         0|            0|            0|  0.00%|
   290|         0|            0|            0|  0.00%|
   291|         0|            0|            0|  0.00%|
   292|         0|            0|            0|  0.00%|
   293|         0|            0|            0|  0.00%|
   294|         0|            0|            0|  0.00%|
   295|         0|            0|            0|  0.00%|
   296|         0|            0|            0|  0.00%|
   297|         0|            0|            0|  0.00%|
   298|         0|            0|            0|  0.00%|
   299|         0|            0|            0|  0.00%|
   300|         0|            0|            0|  0.00%|
   301|         0|            0|            0|  0.00%|
   302|         0|            0|            0|  0.00%|
   303|         0|            0|            0|  0.00%|
   304|         0|            0|            0|  0.00%|
   305|         0|            0|            0|  0.00%|
   306|         0|            0|            0|  0.00%|
   307|         0|            0|            0|  0.00%|
   308|         0|            0|            0|  0.00%|
   309|         0|            0|            0|  0.00%|
   310|         0|            0|            0|  0.00%|
   311|         0|            0|            0|  0.00%|
   312|         0|            0|            0|  0.00%|
   313|         0|            0|            0|  0.00%|
   314|         0|            0|            0|  0.00%|
   315|         0|            0|            0|  0.00%|
   316|         0|            0|            0|  0.00%|
   317|         0|            0|            0|  0.00%|
   318|         0|            0|            0|  0.00%|
   319|         0|            0|            0|  0.00%|
   320|         0|            0|            0|  0.00%|
   321|         0|            0|            0|  0.00%|
   322|         0|            0|            0|  0.00%|
   323|         0|            0|            0|  0.00%|
   324|         0|            0|            0|  0.00%|
   325|         0|            0|            0|  0.00%|
   326|         0|            0|            0|  0.00%|
   327|         0|            0|            0|  0.00%|
   328|         0|            0|            0|  0.00%|
   329|         0|            0|            0|  0.00%|
   330|         0|            0|            0|  0.00%|
   331|         0|            0|            0|  0.00%|
   332|         0|            0|            0|  0.00%|
   333|         0|            0|            0|  0.00%|
   334|         0|            0|            0|  0.00%|
   335|         0|            0|            0|  0.00%|
   336|         0|            0|            0|  0.00%|
   337|         0|            0|            0|  0.00%|
   338|         0|            0|            0|  0.00%|
   339|         0|            0|            0|  0.00%|
   340|         0|            0|            0|  0.00%|
   341|         0|            0|            0|  0.00%|
   342|         0|            0|            0|  0.00%|
   343|         0|            0|            0|  0.00%|
   344|         0|            0|            0|  0.00%|
   345|         0|            0|            0|  0.00%|
   346|         0|            0|            0|  0.00%|
   347|         0|            0|            0|  0.00%|
   348|         0|            0|            0|  0.00%|
   349|         0|            0|            0|  0.00%|
   350|         0|            0|            0|  0.00%|
   351|       145|  0.000966072|  6.66257e-06|  0.00%|
   352|         0|            0|            0|  0.00%|
   353|       145|            0|            0|  0.00%|
   354|       145|            0|            0|  0.00%|
   355|       145|            0|            0|  0.00%|
   356|       145|            0|            0|  0.00%|
   357|       145|            0|            0|  0.00%|
   358|         0|            0|            0|  0.00%|
   359|         0|            0|            0|  0.00%|
   360|       145|            0|            0|  0.00%|
   361|       145|   0.00308609|  2.12834e-05|  0.01%|
   362|         0|            0|            0|  0.00%|
   363|         0|            0|            0|  0.00%|
   364|         0|            0|            0|  0.00%|
   365|         0|            0|            0|  0.00%|
   366|         0|            0|            0|  0.00%|
   367|         0|            0|            0|  0.00%|
   368|         0|            0|            0|  0.00%|
   369|         0|            0|            0|  0.00%|
   370|         0|            0|            0|  0.00%|
   371|         0|            0|            0|  0.00%|
   372|         0|            0|            0|  0.00%|
   373|         0|            0|            0|  0.00%|
   374|         0|            0|            0|  0.00%|
   375|         0|            0|            0|  0.00%|
   376|         0|            0|            0|  0.00%|
   377|         0|            0|            0|  0.00%|
   378|         0|            0|            0|  0.00%|
   379|         0|            0|            0|  0.00%|
   380|         0|            0|            0|  0.00%|
   381|         0|            0|            0|  0.00%|
   382|         0|            0|            0|  0.00%|
   383|         0|            0|            0|  0.00%|
   384|         0|            0|            0|  0.00%|
   385|       201|   0.00100017|  4.97595e-06|  0.00%|
   386|         0|            0|            0|  0.00%|
   387|       201|    0.0010004|  4.97714e-06|  0.00%|
   388|       116|            0|            0|  0.00%|
   389|       116|            0|            0|  0.00%|
   390|         0|            0|            0|  0.00%|
   391|       116|   0.00195646|  1.68661e-05|  0.00%|
(call)|       116|    0.0279663|  0.000241088|  0.05%|# <frozen importlib._bootstrap_external>:431 _get_cached
   392|       201|  0.000962734|  4.78972e-06|  0.00%|
   393|         0|            0|            0|  0.00%|
   394|         0|            0|            0|  0.00%|
   395|         0|            0|            0|  0.00%|
   396|         0|            0|            0|  0.00%|
   397|         0|            0|            0|  0.00%|
   398|       133|    0.0010035|  7.54514e-06|  0.00%|
   399|         0|            0|            0|  0.00%|
   400|         0|            0|            0|  0.00%|
   401|       133|            0|            0|  0.00%|
   402|       119|            0|            0|  0.00%|
   403|         0|            0|            0|  0.00%|
   404|        14|            0|            0|  0.00%|
   405|         0|            0|            0|  0.00%|
   406|       123|            0|            0|  0.00%|
   407|         0|            0|            0|  0.00%|
   408|       123|  0.000968933|   7.8775e-06|  0.00%|
   409|         0|            0|            0|  0.00%|
   410|         0|            0|            0|  0.00%|
   411|         0|            0|            0|  0.00%|
   412|         0|            0|            0|  0.00%|
   413|         0|            0|            0|  0.00%|
   414|         0|            0|            0|  0.00%|
   415|        15|            0|            0|  0.00%|
   416|         0|            0|            0|  0.00%|
   417|        15|            0|            0|  0.00%|
   418|         0|            0|            0|  0.00%|
   419|         0|            0|            0|  0.00%|
   420|         0|            0|            0|  0.00%|
   421|         0|            0|            0|  0.00%|
   422|         0|            0|            0|  0.00%|
   423|         0|            0|            0|  0.00%|
   424|         0|            0|            0|  0.00%|
   425|         0|            0|            0|  0.00%|
   426|         0|            0|            0|  0.00%|
   427|         0|            0|            0|  0.00%|
   428|        15|            0|            0|  0.00%|
   429|        15|            0|            0|  0.00%|
   430|         9|            0|            0|  0.00%|
   431|         9|            0|            0|  0.00%|
(call)|         7|            0|            0|  0.00%|# <frozen importlib._bootstrap>:241 _requires_builtin_wrapper
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\six.py:209 is_package
   432|         0|            0|            0|  0.00%|
   433|         0|            0|            0|  0.00%|
   434|         0|            0|            0|  0.00%|
   435|         0|            0|            0|  0.00%|
   436|         6|            0|            0|  0.00%|
   437|         0|            0|            0|  0.00%|
   438|        15|            0|            0|  0.00%|
(call)|        15|  0.000966072|  6.44048e-05|  0.00%|# <frozen importlib._bootstrap>:351 __init__
   439|         0|            0|            0|  0.00%|
   440|         0|            0|            0|  0.00%|
   441|         0|            0|            0|  0.00%|
   442|         0|            0|            0|  0.00%|
   443|         0|            0|            0|  0.00%|
   444|         0|            0|            0|  0.00%|
   445|         0|            0|            0|  0.00%|
   446|         0|            0|            0|  0.00%|
   447|         0|            0|            0|  0.00%|
   448|         0|            0|            0|  0.00%|
   449|         0|            0|            0|  0.00%|
   450|         0|            0|            0|  0.00%|
   451|         0|            0|            0|  0.00%|
   452|         0|            0|            0|  0.00%|
   453|         0|            0|            0|  0.00%|
   454|         0|            0|            0|  0.00%|
   455|         0|            0|            0|  0.00%|
   456|         0|            0|            0|  0.00%|
   457|         0|            0|            0|  0.00%|
   458|         0|            0|            0|  0.00%|
   459|         0|            0|            0|  0.00%|
   460|         0|            0|            0|  0.00%|
   461|         0|            0|            0|  0.00%|
   462|         0|            0|            0|  0.00%|
   463|         0|            0|            0|  0.00%|
   464|         0|            0|            0|  0.00%|
   465|         0|            0|            0|  0.00%|
   466|         0|            0|            0|  0.00%|
   467|         0|            0|            0|  0.00%|
   468|         0|            0|            0|  0.00%|
   469|         0|            0|            0|  0.00%|
   470|         0|            0|            0|  0.00%|
   471|         0|            0|            0|  0.00%|
   472|         0|            0|            0|  0.00%|
   473|         0|            0|            0|  0.00%|
   474|         0|            0|            0|  0.00%|
   475|         0|            0|            0|  0.00%|
   476|         0|            0|            0|  0.00%|
   477|         0|            0|            0|  0.00%|
   478|         0|            0|            0|  0.00%|
   479|         0|            0|            0|  0.00%|
   480|         0|            0|            0|  0.00%|
   481|         0|            0|            0|  0.00%|
   482|         0|            0|            0|  0.00%|
   483|         0|            0|            0|  0.00%|
   484|         0|            0|            0|  0.00%|
   485|         0|            0|            0|  0.00%|
   486|       123|            0|            0|  0.00%|
   487|         0|            0|            0|  0.00%|
   488|         0|            0|            0|  0.00%|
   489|         0|            0|            0|  0.00%|
   490|       123|   0.00305152|  2.48091e-05|  0.01%|
   491|         0|            0|            0|  0.00%|
   492|         0|            0|            0|  0.00%|
   493|         0|            0|            0|  0.00%|
   494|         0|            0|            0|  0.00%|
   495|         0|            0|            0|  0.00%|
   496|       123|  0.000999689|  8.12755e-06|  0.00%|
   497|       123|            0|            0|  0.00%|
   498|       123|            0|            0|  0.00%|
   499|         0|            0|            0|  0.00%|
   500|         0|            0|            0|  0.00%|
   501|         0|            0|            0|  0.00%|
   502|         0|            0|            0|  0.00%|
   503|         0|            0|            0|  0.00%|
   504|         0|            0|            0|  0.00%|
   505|         0|            0|            0|  0.00%|
   506|         0|            0|            0|  0.00%|
   507|         0|            0|            0|  0.00%|
   508|         0|            0|            0|  0.00%|
   509|         0|            0|            0|  0.00%|
   510|         0|            0|            0|  0.00%|
   511|         0|            0|            0|  0.00%|
   512|         0|            0|            0|  0.00%|
   513|         0|            0|            0|  0.00%|
   514|         0|            0|            0|  0.00%|
   515|         0|            0|            0|  0.00%|
   516|         0|            0|            0|  0.00%|
   517|         0|            0|            0|  0.00%|
   518|         0|            0|            0|  0.00%|
   519|       123|            0|            0|  0.00%|
   520|       123|            0|            0|  0.00%|
   521|         0|            0|            0|  0.00%|
   522|         0|            0|            0|  0.00%|
   523|         0|            0|            0|  0.00%|
   524|       123|            0|            0|  0.00%|
   525|       123|            0|            0|  0.00%|
   526|       123|   0.00100064|  8.13531e-06|  0.00%|
(call)|       123|    0.0010035|  8.15857e-06|  0.00%|# <frozen importlib._bootstrap>:398 parent
   527|         0|            0|            0|  0.00%|
   528|         0|            0|            0|  0.00%|
   529|         0|            0|            0|  0.00%|
   530|       123|            0|            0|  0.00%|
   531|       123|            0|            0|  0.00%|
   532|         0|            0|            0|  0.00%|
   533|         0|            0|            0|  0.00%|
   534|         0|            0|            0|  0.00%|
   535|       123|            0|            0|  0.00%|
   536|       123|  0.000997066|  8.10623e-06|  0.00%|
   537|        12|            0|            0|  0.00%|
   538|        12|            0|            0|  0.00%|
   539|         0|            0|            0|  0.00%|
   540|         0|            0|            0|  0.00%|
   541|         0|            0|            0|  0.00%|
   542|       123|  0.000998497|  8.11786e-06|  0.00%|
(call)|       123|  0.000968933|   7.8775e-06|  0.00%|# <frozen importlib._bootstrap>:406 has_location
   543|       116|            0|            0|  0.00%|
   544|        85|            0|            0|  0.00%|
   545|        85|            0|            0|  0.00%|
   546|         0|            0|            0|  0.00%|
   547|         0|            0|            0|  0.00%|
   548|         0|            0|            0|  0.00%|
   549|       116|            0|            0|  0.00%|
   550|       116|   0.00199676|  1.72134e-05|  0.00%|
(call)|       116|    0.0319233|  0.000275201|  0.06%|# <frozen importlib._bootstrap>:385 cached
   551|        85|            0|            0|  0.00%|
   552|        85|            0|            0|  0.00%|
(call)|        85|  0.000962734|  1.13263e-05|  0.00%|# <frozen importlib._bootstrap>:385 cached
   553|         0|            0|            0|  0.00%|
   554|         0|            0|            0|  0.00%|
   555|       123|   0.00100088|  8.13725e-06|  0.00%|
   556|         0|            0|            0|  0.00%|
   557|         0|            0|            0|  0.00%|
   558|       123|   0.00100064|  8.13531e-06|  0.00%|
   559|         0|            0|            0|  0.00%|
   560|         0|            0|            0|  0.00%|
   561|       123|            0|            0|  0.00%|
   562|       123|            0|            0|  0.00%|
   563|         0|            0|            0|  0.00%|
   564|         0|            0|            0|  0.00%|
   565|       123|            0|            0|  0.00%|
(call)|        85|            0|            0|  0.00%|# <frozen importlib._bootstrap_external>:781 create_module
(call)|         7|            0|            0|  0.00%|# <frozen importlib._bootstrap>:757 create_module
(call)|        31|    0.0858433|   0.00276914|  0.15%|# <frozen importlib._bootstrap_external>:1106 create_module
   566|         0|            0|            0|  0.00%|
   567|         0|            0|            0|  0.00%|
   568|         0|            0|            0|  0.00%|
   569|       123|            0|            0|  0.00%|
   570|        85|            0|            0|  0.00%|
(call)|        85|            0|            0|  0.00%|# <frozen importlib._bootstrap>:35 _new_module
   571|       123|            0|            0|  0.00%|
(call)|       123|    0.0449035|  0.000365069|  0.08%|# <frozen importlib._bootstrap>:486 _init_module_attrs
   572|       123|            0|            0|  0.00%|
   573|         0|            0|            0|  0.00%|
   574|         0|            0|            0|  0.00%|
   575|         0|            0|            0|  0.00%|
   576|         0|            0|            0|  0.00%|
   577|         0|            0|            0|  0.00%|
   578|         0|            0|            0|  0.00%|
   579|         0|            0|            0|  0.00%|
   580|         0|            0|            0|  0.00%|
   581|         0|            0|            0|  0.00%|
   582|         0|            0|            0|  0.00%|
   583|         0|            0|            0|  0.00%|
   584|         0|            0|            0|  0.00%|
   585|         0|            0|            0|  0.00%|
   586|         0|            0|            0|  0.00%|
   587|         0|            0|            0|  0.00%|
   588|         0|            0|            0|  0.00%|
   589|         0|            0|            0|  0.00%|
   590|         0|            0|            0|  0.00%|
   591|         0|            0|            0|  0.00%|
   592|         0|            0|            0|  0.00%|
   593|         0|            0|            0|  0.00%|
   594|         0|            0|            0|  0.00%|
   595|         0|            0|            0|  0.00%|
   596|         0|            0|            0|  0.00%|
   597|         0|            0|            0|  0.00%|
   598|         0|            0|            0|  0.00%|
   599|         0|            0|            0|  0.00%|
   600|         0|            0|            0|  0.00%|
   601|         0|            0|            0|  0.00%|
   602|         0|            0|            0|  0.00%|
   603|         0|            0|            0|  0.00%|
   604|         0|            0|            0|  0.00%|
   605|         0|            0|            0|  0.00%|
   606|         0|            0|            0|  0.00%|
   607|         0|            0|            0|  0.00%|
   608|         0|            0|            0|  0.00%|
   609|         0|            0|            0|  0.00%|
   610|         0|            0|            0|  0.00%|
   611|         0|            0|            0|  0.00%|
   612|         0|            0|            0|  0.00%|
   613|         0|            0|            0|  0.00%|
   614|         0|            0|            0|  0.00%|
   615|         0|            0|            0|  0.00%|
   616|         0|            0|            0|  0.00%|
   617|         0|            0|            0|  0.00%|
   618|         0|            0|            0|  0.00%|
   619|         0|            0|            0|  0.00%|
   620|         0|            0|            0|  0.00%|
   621|         0|            0|            0|  0.00%|
   622|         8|            0|            0|  0.00%|
   623|         0|            0|            0|  0.00%|
   624|         0|            0|            0|  0.00%|
   625|         0|            0|            0|  0.00%|
   626|         8|            0|            0|  0.00%|
   627|         8|            0|            0|  0.00%|
(call)|         6|     0.460246|    0.0767076|  0.82%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\extern\__init__.py:35 load_module
(call)|         2|  0.000999689|  0.000499845|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\six.py:195 load_module
   628|         0|            0|            0|  0.00%|
   629|         0|            0|            0|  0.00%|
   630|         0|            0|            0|  0.00%|
   631|         0|            0|            0|  0.00%|
   632|         0|            0|            0|  0.00%|
   633|         0|            0|            0|  0.00%|
   634|         0|            0|            0|  0.00%|
   635|         8|            0|            0|  0.00%|
   636|         8|            0|            0|  0.00%|
   637|         8|            0|            0|  0.00%|
   638|         0|            0|            0|  0.00%|
   639|         0|            0|            0|  0.00%|
   640|         0|            0|            0|  0.00%|
   641|         0|            0|            0|  0.00%|
   642|         8|            0|            0|  0.00%|
   643|         2|            0|            0|  0.00%|
   644|         0|            0|            0|  0.00%|
   645|         0|            0|            0|  0.00%|
   646|         0|            0|            0|  0.00%|
   647|         2|            0|            0|  0.00%|
   648|         2|            0|            0|  0.00%|
   649|         0|            0|            0|  0.00%|
   650|         0|            0|            0|  0.00%|
   651|         0|            0|            0|  0.00%|
   652|         8|            0|            0|  0.00%|
   653|         2|            0|            0|  0.00%|
   654|         2|            0|            0|  0.00%|
   655|         0|            0|            0|  0.00%|
   656|         0|            0|            0|  0.00%|
   657|         8|            0|            0|  0.00%|
   658|         0|            0|            0|  0.00%|
   659|       131|            0|            0|  0.00%|
   660|         0|            0|            0|  0.00%|
   661|       131|            0|            0|  0.00%|
   662|         0|            0|            0|  0.00%|
   663|       131|  0.000998259|  7.62029e-06|  0.00%|
   664|         8|            0|            0|  0.00%|
(call)|         8|     0.460246|    0.0575307|  0.82%|# <frozen importlib._bootstrap>:622 _load_backward_compatible
   665|         0|            0|            0|  0.00%|
   666|       123|            0|            0|  0.00%|
(call)|       123|     0.129752|   0.00105489|  0.23%|# <frozen importlib._bootstrap>:558 module_from_spec
   667|         0|            0|            0|  0.00%|
   668|         0|            0|            0|  0.00%|
   669|         0|            0|            0|  0.00%|
   670|         0|            0|            0|  0.00%|
   671|       123|            0|            0|  0.00%|
   672|       123|   0.00100017|  8.13143e-06|  0.00%|
   673|       123|            0|            0|  0.00%|
   674|       123|            0|            0|  0.00%|
   675|       123|            0|            0|  0.00%|
   676|         0|            0|            0|  0.00%|
   677|         0|            0|            0|  0.00%|
   678|         0|            0|            0|  0.00%|
   679|         0|            0|            0|  0.00%|
   680|       123|   0.00100136|  8.14112e-06|  0.00%|
(call)|         7|   0.00100279|  0.000143256|  0.00%|# <frozen importlib._bootstrap>:765 exec_module
(call)|        31|  0.000985384|  3.17866e-05|  0.00%|# <frozen importlib._bootstrap_external>:1114 exec_module
(call)|        85|      2.87066|    0.0337724|  5.11%|# <frozen importlib._bootstrap_external>:784 exec_module
   681|         0|            0|            0|  0.00%|
   682|         0|            0|            0|  0.00%|
   683|         0|            0|            0|  0.00%|
   684|         0|            0|            0|  0.00%|
   685|         0|            0|            0|  0.00%|
   686|         0|            0|            0|  0.00%|
   687|         0|            0|            0|  0.00%|
   688|         0|            0|            0|  0.00%|
   689|         0|            0|            0|  0.00%|
   690|         0|            0|            0|  0.00%|
   691|       123|            0|            0|  0.00%|
   692|       123|            0|            0|  0.00%|
   693|       123|   0.00201511|   1.6383e-05|  0.00%|
(call)|       123|            0|            0|  0.00%|# <frozen importlib._bootstrap>:231 _verbose_message
   694|         0|            0|            0|  0.00%|
   695|       123|            0|            0|  0.00%|
   696|         0|            0|            0|  0.00%|
   697|       123|            0|            0|  0.00%|
   698|         0|            0|            0|  0.00%|
   699|         0|            0|            0|  0.00%|
   700|         0|            0|            0|  0.00%|
   701|         0|            0|            0|  0.00%|
   702|         0|            0|            0|  0.00%|
   703|         0|            0|            0|  0.00%|
   704|         0|            0|            0|  0.00%|
   705|         0|            0|            0|  0.00%|
   706|         0|            0|            0|  0.00%|
   707|         0|            0|            0|  0.00%|
   708|         0|            0|            0|  0.00%|
   709|         0|            0|            0|  0.00%|
   710|         0|            0|            0|  0.00%|
   711|         0|            0|            0|  0.00%|
   712|         0|            0|            0|  0.00%|
   713|         0|            0|            0|  0.00%|
   714|         0|            0|            0|  0.00%|
   715|         0|            0|            0|  0.00%|
   716|         0|            0|            0|  0.00%|
   717|         0|            0|            0|  0.00%|
   718|         0|            0|            0|  0.00%|
   719|         0|            0|            0|  0.00%|
   720|         0|            0|            0|  0.00%|
   721|         0|            0|            0|  0.00%|
   722|         0|            0|            0|  0.00%|
   723|         0|            0|            0|  0.00%|
   724|         0|            0|            0|  0.00%|
   725|         0|            0|            0|  0.00%|
   726|         0|            0|            0|  0.00%|
   727|         0|            0|            0|  0.00%|
   728|         0|            0|            0|  0.00%|
   729|         0|            0|            0|  0.00%|
   730|         0|            0|            0|  0.00%|
   731|         0|            0|            0|  0.00%|
   732|         0|            0|            0|  0.00%|
   733|         0|            0|            0|  0.00%|
   734|         0|            0|            0|  0.00%|
   735|         0|            0|            0|  0.00%|
   736|       137|            0|            0|  0.00%|
   737|         0|            0|            0|  0.00%|
   738|       137|  0.000505209|  3.68766e-06|  0.00%|
   739|        80|  0.000998497|  1.24812e-05|  0.00%|
   740|        57|            0|            0|  0.00%|
   741|         7|            0|            0|  0.00%|
(call)|         7|  0.000966072|   0.00013801|  0.00%|# <frozen importlib._bootstrap>:415 spec_from_loader
   742|         0|            0|            0|  0.00%|
   743|        50|            0|            0|  0.00%|
   744|         0|            0|            0|  0.00%|
   745|         0|            0|            0|  0.00%|
   746|         0|            0|            0|  0.00%|
   747|         0|            0|            0|  0.00%|
   748|         0|            0|            0|  0.00%|
   749|         0|            0|            0|  0.00%|
   750|         0|            0|            0|  0.00%|
   751|         0|            0|            0|  0.00%|
   752|         0|            0|            0|  0.00%|
   753|         0|            0|            0|  0.00%|
   754|         0|            0|            0|  0.00%|
   755|         0|            0|            0|  0.00%|
   756|         0|            0|            0|  0.00%|
   757|         7|            0|            0|  0.00%|
   758|         0|            0|            0|  0.00%|
   759|         0|            0|            0|  0.00%|
   760|         7|            0|            0|  0.00%|
   761|         0|            0|            0|  0.00%|
   762|         0|            0|            0|  0.00%|
   763|         7|            0|            0|  0.00%|
(call)|         7|            0|            0|  0.00%|# <frozen importlib._bootstrap>:220 _call_with_frames_removed
   764|         0|            0|            0|  0.00%|
   765|         7|            0|            0|  0.00%|
   766|         0|            0|            0|  0.00%|
   767|         0|            0|            0|  0.00%|
   768|         7|            0|            0|  0.00%|
(call)|         7|   0.00100279|  0.000143256|  0.00%|# <frozen importlib._bootstrap>:220 _call_with_frames_removed
   769|         0|            0|            0|  0.00%|
   770|         0|            0|            0|  0.00%|
   771|         0|            0|            0|  0.00%|
   772|         0|            0|            0|  0.00%|
   773|         0|            0|            0|  0.00%|
   774|         0|            0|            0|  0.00%|
   775|         0|            0|            0|  0.00%|
   776|         0|            0|            0|  0.00%|
   777|         0|            0|            0|  0.00%|
   778|         0|            0|            0|  0.00%|
   779|         0|            0|            0|  0.00%|
   780|         0|            0|            0|  0.00%|
   781|         0|            0|            0|  0.00%|
   782|         7|            0|            0|  0.00%|
   783|         0|            0|            0|  0.00%|
   784|         0|            0|            0|  0.00%|
   785|         0|            0|            0|  0.00%|
   786|         7|            0|            0|  0.00%|
   787|         0|            0|            0|  0.00%|
   788|         0|            0|            0|  0.00%|
   789|         0|            0|            0|  0.00%|
   790|         0|            0|            0|  0.00%|
   791|         0|            0|            0|  0.00%|
   792|         0|            0|            0|  0.00%|
   793|         0|            0|            0|  0.00%|
   794|         0|            0|            0|  0.00%|
   795|         0|            0|            0|  0.00%|
   796|         0|            0|            0|  0.00%|
   797|         0|            0|            0|  0.00%|
   798|         0|            0|            0|  0.00%|
   799|         0|            0|            0|  0.00%|
   800|         0|            0|            0|  0.00%|
   801|         0|            0|            0|  0.00%|
   802|         0|            0|            0|  0.00%|
   803|         0|            0|            0|  0.00%|
   804|         0|            0|            0|  0.00%|
   805|         0|            0|            0|  0.00%|
   806|         0|            0|            0|  0.00%|
   807|         0|            0|            0|  0.00%|
   808|         0|            0|            0|  0.00%|
   809|         0|            0|            0|  0.00%|
   810|         0|            0|            0|  0.00%|
   811|       130|            0|            0|  0.00%|
   812|         0|            0|            0|  0.00%|
   813|       130|            0|            0|  0.00%|
   814|         0|            0|            0|  0.00%|
   815|         0|            0|            0|  0.00%|
   816|       130|    0.0010004|  7.69542e-06|  0.00%|
   817|         0|            0|            0|  0.00%|
   818|         0|            0|            0|  0.00%|
   819|         0|            0|            0|  0.00%|
   820|         0|            0|            0|  0.00%|
   821|         0|            0|            0|  0.00%|
   822|         0|            0|            0|  0.00%|
   823|         0|            0|            0|  0.00%|
   824|         0|            0|            0|  0.00%|
   825|         0|            0|            0|  0.00%|
   826|         0|            0|            0|  0.00%|
   827|         0|            0|            0|  0.00%|
   828|         0|            0|            0|  0.00%|
   829|         0|            0|            0|  0.00%|
   830|         0|            0|            0|  0.00%|
   831|         0|            0|            0|  0.00%|
   832|         0|            0|            0|  0.00%|
   833|         0|            0|            0|  0.00%|
   834|         0|            0|            0|  0.00%|
   835|         0|            0|            0|  0.00%|
   836|         0|            0|            0|  0.00%|
   837|         0|            0|            0|  0.00%|
   838|         0|            0|            0|  0.00%|
   839|         0|            0|            0|  0.00%|
   840|         0|            0|            0|  0.00%|
   841|         0|            0|            0|  0.00%|
   842|         0|            0|            0|  0.00%|
   843|         0|            0|            0|  0.00%|
   844|         0|            0|            0|  0.00%|
   845|         0|            0|            0|  0.00%|
   846|         0|            0|            0|  0.00%|
   847|         0|            0|            0|  0.00%|
   848|         0|            0|            0|  0.00%|
   849|         0|            0|            0|  0.00%|
   850|         0|            0|            0|  0.00%|
   851|         0|            0|            0|  0.00%|
   852|         0|            0|            0|  0.00%|
   853|         0|            0|            0|  0.00%|
   854|         0|            0|            0|  0.00%|
   855|         0|            0|            0|  0.00%|
   856|         0|            0|            0|  0.00%|
   857|         0|            0|            0|  0.00%|
   858|         0|            0|            0|  0.00%|
   859|         0|            0|            0|  0.00%|
   860|         0|            0|            0|  0.00%|
   861|         0|            0|            0|  0.00%|
   862|         0|            0|            0|  0.00%|
   863|         0|            0|            0|  0.00%|
   864|         0|            0|            0|  0.00%|
   865|         0|            0|            0|  0.00%|
   866|         0|            0|            0|  0.00%|
   867|         0|            0|            0|  0.00%|
   868|         0|            0|            0|  0.00%|
   869|         0|            0|            0|  0.00%|
   870|         0|            0|            0|  0.00%|
   871|         0|            0|            0|  0.00%|
   872|         0|            0|            0|  0.00%|
   873|         0|            0|            0|  0.00%|
   874|       409|  5.50747e-05|  1.34657e-07|  0.00%|
   875|         0|            0|            0|  0.00%|
   876|       409|            0|            0|  0.00%|
   877|         0|            0|            0|  0.00%|
   878|       409|  0.000258446|  6.31897e-07|  0.00%|
   879|         0|            0|            0|  0.00%|
   880|       409|            0|            0|  0.00%|
   881|         0|            0|            0|  0.00%|
   882|         0|            0|            0|  0.00%|
   883|         0|            0|            0|  0.00%|
   884|         0|            0|            0|  0.00%|
   885|         0|            0|            0|  0.00%|
   886|         0|            0|            0|  0.00%|
   887|         0|            0|            0|  0.00%|
   888|         0|            0|            0|  0.00%|
   889|         0|            0|            0|  0.00%|
   890|         0|            0|            0|  0.00%|
   891|         0|            0|            0|  0.00%|
   892|        12|            0|            0|  0.00%|
   893|         0|            0|            0|  0.00%|
   894|         0|            0|            0|  0.00%|
   895|        12|            0|            0|  0.00%|
(call)|         9|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\extern\__init__.py:23 find_module
(call)|         3|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\six.py:184 find_module
   896|        12|            0|            0|  0.00%|
   897|         4|            0|            0|  0.00%|
   898|         8|            0|            0|  0.00%|
(call)|         8|            0|            0|  0.00%|# <frozen importlib._bootstrap>:415 spec_from_loader
   899|         0|            0|            0|  0.00%|
   900|         0|            0|            0|  0.00%|
   901|       137|    0.0010004|  7.30222e-06|  0.00%|
   902|         0|            0|            0|  0.00%|
   903|       137|   0.00100064|  7.30396e-06|  0.00%|
   904|       137|            0|            0|  0.00%|
   905|         0|            0|            0|  0.00%|
   906|         0|            0|            0|  0.00%|
   907|         0|            0|            0|  0.00%|
   908|         0|            0|            0|  0.00%|
   909|       137|            0|            0|  0.00%|
   910|         0|            0|            0|  0.00%|
   911|         0|            0|            0|  0.00%|
   912|         0|            0|            0|  0.00%|
   913|         0|            0|            0|  0.00%|
   914|         0|            0|            0|  0.00%|
   915|       137|   0.00102496|  7.48147e-06|  0.00%|
   916|       415|  0.000997782|  2.40429e-06|  0.00%|
   917|       409|   0.00505638|  1.23628e-05|  0.01%|
(call)|       409|  5.50747e-05|  1.34657e-07|  0.00%|# <frozen importlib._bootstrap>:874 __enter__
   918|       409|  0.000961304|  2.35038e-06|  0.00%|
   919|       409|   0.00101042|  2.47046e-06|  0.00%|
   920|        12|            0|            0|  0.00%|
   921|        12|            0|            0|  0.00%|
(call)|        12|            0|            0|  0.00%|# <frozen importlib._bootstrap>:892 _find_spec_legacy
   922|        12|            0|            0|  0.00%|
(call)|         8|            0|            0|  0.00%|# <frozen importlib._bootstrap>:878 __exit__
   923|         4|            0|            0|  0.00%|
(call)|         4|            0|            0|  0.00%|# <frozen importlib._bootstrap>:878 __exit__
   924|         0|            0|            0|  0.00%|
   925|       397|   0.00608301|  1.53224e-05|  0.01%|
(call)|       137|   0.00246978|  1.80276e-05|  0.00%|# <frozen importlib._bootstrap>:736 find_spec
(call)|       397|  0.000258446|  6.50997e-07|  0.00%|# <frozen importlib._bootstrap>:878 __exit__
(call)|       130|    0.0010004|  7.69542e-06|  0.00%|# <frozen importlib._bootstrap>:811 find_spec
(call)|       130|      0.15106|     0.001162|  0.27%|# <frozen importlib._bootstrap_external>:1341 find_spec
   926|       405|   0.00075984|  1.87615e-06|  0.00%|
   927|         0|            0|            0|  0.00%|
   928|       131|            0|            0|  0.00%|
   929|         0|            0|            0|  0.00%|
   930|         0|            0|            0|  0.00%|
   931|         0|            0|            0|  0.00%|
   932|         0|            0|            0|  0.00%|
   933|         0|            0|            0|  0.00%|
   934|         0|            0|            0|  0.00%|
   935|         0|            0|            0|  0.00%|
   936|         0|            0|            0|  0.00%|
   937|         0|            0|            0|  0.00%|
   938|         0|            0|            0|  0.00%|
   939|         0|            0|            0|  0.00%|
   940|         0|            0|            0|  0.00%|
   941|         0|            0|            0|  0.00%|
   942|         0|            0|            0|  0.00%|
   943|       131|            0|            0|  0.00%|
   944|         0|            0|            0|  0.00%|
   945|         6|            0|            0|  0.00%|
   946|         0|            0|            0|  0.00%|
   947|         0|            0|            0|  0.00%|
   948|         0|            0|            0|  0.00%|
   949|         0|            0|            0|  0.00%|
   950|         0|            0|            0|  0.00%|
   951|         0|            0|            0|  0.00%|
   952|         0|            0|            0|  0.00%|
   953|         0|            0|            0|  0.00%|
   954|         0|            0|            0|  0.00%|
   955|         0|            0|            0|  0.00%|
   956|         0|            0|            0|  0.00%|
   957|         0|            0|            0|  0.00%|
   958|         0|            0|            0|  0.00%|
   959|         0|            0|            0|  0.00%|
   960|         0|            0|            0|  0.00%|
   961|         0|            0|            0|  0.00%|
   962|         0|            0|            0|  0.00%|
   963|         0|            0|            0|  0.00%|
   964|         0|            0|            0|  0.00%|
   965|         0|            0|            0|  0.00%|
   966|         0|            0|            0|  0.00%|
   967|       142|  0.000771999|  5.43662e-06|  0.00%|
   968|       142|   0.00100565|  7.08204e-06|  0.00%|
   969|       142|            0|            0|  0.00%|
   970|       142|            0|            0|  0.00%|
   971|        85|  0.000999928|  1.17639e-05|  0.00%|
   972|         8|            0|            0|  0.00%|
(call)|         8|    0.0207248|    0.0025906|  0.04%|# <frozen importlib._bootstrap>:220 _call_with_frames_removed
   973|         0|            0|            0|  0.00%|
   974|        80|            0|            0|  0.00%|
   975|         0|            0|            0|  0.00%|
   976|        80|            0|            0|  0.00%|
   977|        80|            0|            0|  0.00%|
   978|        80|   0.00099659|  1.24574e-05|  0.00%|
   979|         0|            0|            0|  0.00%|
   980|         0|            0|            0|  0.00%|
   981|         0|            0|            0|  0.00%|
   982|       137|   0.00100017|  7.30048e-06|  0.00%|
(call)|       137|     0.172738|   0.00126086|  0.31%|# <frozen importlib._bootstrap>:901 _find_spec
   983|       137|  0.000997066|  7.27786e-06|  0.00%|
   984|         6|            0|            0|  0.00%|
   985|         0|            0|            0|  0.00%|
   986|       131|   0.00199938|  1.52624e-05|  0.00%|
(call)|       131|      2.87462|    0.0219437|  5.12%|# <frozen importlib._bootstrap>:659 _load_unlocked
   987|       131|            0|            0|  0.00%|
   988|         0|            0|            0|  0.00%|
   989|        78|            0|            0|  0.00%|
   990|        78|            0|            0|  0.00%|
   991|        78|            0|            0|  0.00%|
   992|        78|            0|            0|  0.00%|
   993|         0|            0|            0|  0.00%|
   994|         0|            0|            0|  0.00%|
   995|         0|            0|            0|  0.00%|
   996|       131|   0.00102735|  7.84233e-06|  0.00%|
   997|         0|            0|            0|  0.00%|
   998|         0|            0|            0|  0.00%|
   999|         0|            0|            0|  0.00%|
  1000|         0|            0|            0|  0.00%|
  1001|         0|            0|            0|  0.00%|
  1002|       142|   0.00395298|  2.78379e-05|  0.01%|
  1003|         0|            0|            0|  0.00%|
  1004|       142|   0.00196815|  1.38602e-05|  0.00%|
(call)|       142|            0|            0|  0.00%|# <frozen importlib._bootstrap>:152 __init__
(call)|       142|    0.0180678|  0.000127238|  0.03%|# <frozen importlib._bootstrap>:156 __enter__
  1005|       142|    0.0010016|   7.0535e-06|  0.00%|
  1006|       142|   0.00100017|  7.04342e-06|  0.00%|
  1007|       153|    0.0073812|  4.82431e-05|  0.01%|
(call)|       142|      2.88561|    0.0203212|  5.14%|# <frozen importlib._bootstrap>:967 _find_and_load_unlocked
(call)|       142|    0.0049963|  3.51852e-05|  0.01%|# <frozen importlib._bootstrap>:160 __exit__
(call)|       142|   0.00199986|  1.40835e-05|  0.00%|# <frozen importlib._bootstrap>:185 cb
  1008|         0|            0|            0|  0.00%|
  1009|         0|            0|            0|  0.00%|
  1010|         0|            0|            0|  0.00%|
  1011|         0|            0|            0|  0.00%|
  1012|         0|            0|            0|  0.00%|
  1013|         0|            0|            0|  0.00%|
  1014|         0|            0|            0|  0.00%|
  1015|         0|            0|            0|  0.00%|
  1016|         0|            0|            0|  0.00%|
  1017|         0|            0|            0|  0.00%|
  1018|         0|            0|            0|  0.00%|
  1019|         0|            0|            0|  0.00%|
  1020|         0|            0|            0|  0.00%|
  1021|         0|            0|            0|  0.00%|
  1022|         0|            0|            0|  0.00%|
  1023|         0|            0|            0|  0.00%|
  1024|         0|            0|            0|  0.00%|
  1025|         0|            0|            0|  0.00%|
  1026|         0|            0|            0|  0.00%|
  1027|         0|            0|            0|  0.00%|
  1028|         0|            0|            0|  0.00%|
  1029|         0|            0|            0|  0.00%|
  1030|         0|            0|            0|  0.00%|
  1031|         0|            0|            0|  0.00%|
  1032|         0|            0|            0|  0.00%|
  1033|        21|   0.00195098|  9.29038e-05|  0.00%|
  1034|         0|            0|            0|  0.00%|
  1035|         0|            0|            0|  0.00%|
  1036|         0|            0|            0|  0.00%|
  1037|         0|            0|            0|  0.00%|
  1038|         0|            0|            0|  0.00%|
  1039|         0|            0|            0|  0.00%|
  1040|         0|            0|            0|  0.00%|
  1041|         0|            0|            0|  0.00%|
  1042|         0|            0|            0|  0.00%|
  1043|        45|            0|            0|  0.00%|
  1044|        24|            0|            0|  0.00%|
  1045|         0|            0|            0|  0.00%|
  1046|         0|            0|            0|  0.00%|
  1047|         0|            0|            0|  0.00%|
  1048|         0|            0|            0|  0.00%|
  1049|         0|            0|            0|  0.00%|
  1050|         0|            0|            0|  0.00%|
  1051|        24|            0|            0|  0.00%|
  1052|         1|            0|            0|  0.00%|
  1053|         0|            0|            0|  0.00%|
  1054|         0|            0|            0|  0.00%|
  1055|        23|            0|            0|  0.00%|
(call)|         2|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pkg_resources\_vendor\six.py:91 __get__
  1056|         8|            0|            0|  0.00%|
  1057|         8|            0|            0|  0.00%|
  1058|         8|            0|            0|  0.00%|
(call)|         8|     0.175615|    0.0219519|  0.31%|# <frozen importlib._bootstrap>:220 _call_with_frames_removed
  1059|         0|            0|            0|  0.00%|
  1060|         0|            0|            0|  0.00%|
  1061|         0|            0|            0|  0.00%|
  1062|         0|            0|            0|  0.00%|
  1063|         0|            0|            0|  0.00%|
  1064|         0|            0|            0|  0.00%|
  1065|         0|            0|            0|  0.00%|
  1066|         0|            0|            0|  0.00%|
  1067|        21|            0|            0|  0.00%|
File: .\boss_bullet.py
File duration: 0.125074s (0.22%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|""" Represents Bullets in the game world """
     2|         1|            0|            0|  0.00%|import pygame
     3|         1|            0|            0|  0.00%|from constants import *
     4|         0|            0|            0|  0.00%|
     5|         1|            0|            0|  0.00%|ENEMY = 0
     6|         1|            0|            0|  0.00%|PLAYER = 1
     7|         0|            0|            0|  0.00%|
     8|         3|            0|            0|  0.00%|class BossBullet(pygame.sprite.Sprite):
(call)|         1|            0|            0|  0.00%|# .\boss_bullet.py:8 BossBullet
     9|        57|            0|            0|  0.00%|    def __init__(self, screen, x_pos, y_pos, x_speed, y_speed, blocks, bullet_type=ENEMY):
    10|        56|            0|            0|  0.00%|        super().__init__()
(call)|        56|            0|            0|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:112 __init__
    11|        56|            0|            0|  0.00%|        self.screen = screen
    12|        56|   0.00103641|  1.85072e-05|  0.00%|        self.screen_width = screen.get_width()
    13|        56|            0|            0|  0.00%|        self.screen_height = screen.get_height()
    14|        56|            0|            0|  0.00%|        self.blocks = blocks
    15|        56|            0|            0|  0.00%|        if bullet_type == ENEMY:
    16|        34|   0.00599408|  0.000176297|  0.01%|            self.surf = pygame.image.load("ball_red.png").convert_alpha()
    17|         0|            0|            0|  0.00%|        else:
    18|        22|   0.00299835|  0.000136289|  0.01%|            self.surf = pygame.image.load("ball_yellow.png").convert_alpha()
    19|        56|  0.000997782|  1.78175e-05|  0.00%|        self.rect = self.surf.get_rect(topleft=[x_pos, y_pos])
    20|        56|            0|            0|  0.00%|        self.x_speed = x_speed
    21|        56|            0|            0|  0.00%|        self.y_speed = y_speed
    22|         0|            0|            0|  0.00%|
    23|      3087|   0.00198436|  6.42811e-07|  0.00%|    def draw(self, surf=None):
    24|      3086|   0.00800872|  2.59518e-06|  0.01%|        if surf:
    25|      3086|    0.0190191|  6.16304e-06|  0.03%|            surf.blit(self.surf, self.rect)
    26|         0|            0|            0|  0.00%|        else:
    27|         0|            0|            0|  0.00%|            self.screen.blit(self.surf, self.rect)
    28|         0|            0|            0|  0.00%|
    29|      3143|    0.0080092|  2.54826e-06|  0.01%|    def update(self):
    30|      3142|   0.00796938|   2.5364e-06|  0.01%|        self.rect.move_ip(self.x_speed, self.y_speed)
    31|      3142|    0.0120809|  3.84497e-06|  0.02%|        if ( (self.rect.left < 0 + X_BORDER) or
    32|      3142|   0.00995111|  3.16713e-06|  0.02%|           (self.rect.right > self.screen_width - X_BORDER) or
    33|      3142|    0.0129781|  4.13051e-06|  0.02%|           (self.rect.top < 0 + Y_BORDER) or
    34|      3142|   0.00795913|  2.53314e-06|  0.01%|           (self.rect.bottom > self.screen_height) ) :
    35|         0|            0|            0|  0.00%|            self.kill()
    36|      3142|    0.0260878|  8.30292e-06|  0.05%|        if pygame.sprite.spritecollideany(self, self.blocks):
(call)|      3142|      4.91596|   0.00156459|  8.75%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:1712 spritecollideany
    37|        38|            0|            0|  0.00%|            self.kill()
(call)|        38|    0.0010004|  2.63264e-05|  0.00%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:183 kill
File: .\intro.py
File duration: 0.0521867s (0.09%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|import pygame
     2|         1|            0|            0|  0.00%|from pygame.locals import KEYDOWN, K_RETURN, MOUSEBUTTONUP
(call)|         1|   0.00301409|   0.00301409|  0.01%|# <frozen importlib._bootstrap>:1002 _find_and_load
     3|         1|            0|            0|  0.00%|import level_one
(call)|         1|     0.230952|     0.230952|  0.41%|# <frozen importlib._bootstrap>:1002 _find_and_load
     4|         1|            0|            0|  0.00%|import level_two
     5|         1|            0|            0|  0.00%|import level_three
     6|         0|            0|            0|  0.00%|
     7|         0|            0|            0|  0.00%|
     8|         3|            0|            0|  0.00%|class IntroScene:
(call)|         1|            0|            0|  0.00%|# .\intro.py:8 IntroScene
     9|         2|            0|            0|  0.00%|    def __init__(self, screen):
    10|         1|            0|            0|  0.00%|        self.screen = screen
    11|         1|            0|            0|  0.00%|        self.screen_width = screen.get_width()
    12|         1|            0|            0|  0.00%|        self.screen_height = screen.get_height()
    13|         1|            0|            0|  0.00%|        self.hovered = False
    14|         2|   0.00100112|   0.00050056|  0.00%|        self.game_surf = pygame.Surface(
    15|         1|            0|            0|  0.00%|            (self.screen_width - 20, self.screen_height - 20)
    16|         0|            0|            0|  0.00%|        )
    17|         1|  0.000999689|  0.000999689|  0.00%|        self.intro_pic = pygame.image.load("intro_scene.png")
    18|         1|            0|            0|  0.00%|        self.intro_pic_rect = self.intro_pic.get_rect(center = [self.screen_width / 2, (self.screen_height) / 2])
    19|         1|            0|            0|  0.00%|        self.font = pygame.font.SysFont("Garamond", 32)
(call)|         1|     0.258999|     0.258999|  0.46%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sysfont.py:344 SysFont
    20|         1|   0.00100088|   0.00100088|  0.00%|        self.welcome_text = self.font.render("Lightward", True, [255, 255, 255])
    21|         2|            0|            0|  0.00%|        self.welcome_textRect = self.welcome_text.get_rect(
    22|         1|            0|            0|  0.00%|            center=[self.screen_width / 2, (self.screen_height - 250) / 2]
    23|         0|            0|            0|  0.00%|        )
    24|         2|  0.000999451|  0.000499725|  0.00%|        self.instructions_text = self.font.render(
    25|         1|            0|            0|  0.00%|            "Can you find the light?", True, [255, 255, 255]
    26|         0|            0|            0|  0.00%|        )
    27|         2|            0|            0|  0.00%|        self.instructions_textRect = self.instructions_text.get_rect(
    28|         1|            0|            0|  0.00%|            center=[self.screen_width / 2, (self.screen_height+250) / 2]
    29|         0|            0|            0|  0.00%|        )
    30|         1|            0|            0|  0.00%|        self.play_text = self.font.render("PLAY", True, pygame.Color("black"))
    31|         2|            0|            0|  0.00%|        self.play_textRect = self.play_text.get_rect(
    32|         1|            0|            0|  0.00%|            center=[self.screen_width / 2, (self.screen_height) / 2]
    33|         0|            0|            0|  0.00%|        )
    34|         1|            0|            0|  0.00%|        self.font.set_bold(True)
    35|         1|            0|            0|  0.00%|        self.play_hover_text = self.font.render("PLAY", True, pygame.Color("black"))
    36|         1|            0|            0|  0.00%|        self.play_hover_text_rect = self.play_hover_text.get_rect(center=[self.screen_width / 2, (self.screen_height)/2])
    37|         0|            0|            0|  0.00%|
    38|         1|            0|            0|  0.00%|        self.next_scene = None
    39|         0|            0|            0|  0.00%|
    40|        35|            0|            0|  0.00%|    def draw(self):
    41|        34|    0.0017035|   5.0103e-05|  0.00%|        self.screen.fill(pygame.Color("white"))
    42|        34|   0.00407577|  0.000119875|  0.01%|        self.game_surf.fill((0, 0, 0))
    43|        34|    0.0275686|  0.000810841|  0.05%|        self.screen.blit(self.game_surf, (10, 10))
    44|         0|            0|            0|  0.00%|        # places the image and text on the screen
    45|         0|            0|            0|  0.00%|
    46|        34|    0.0128243|  0.000377185|  0.02%|        self.screen.blit(self.intro_pic,self.intro_pic_rect)
    47|        34|            0|            0|  0.00%|        if self.hovered:
    48|         0|            0|            0|  0.00%|            self.screen.blit(self.play_hover_text, self.play_hover_text_rect)
    49|         0|            0|            0|  0.00%|        else:
    50|        34|            0|            0|  0.00%|            self.screen.blit(self.play_text, self.play_textRect)
    51|        34|   0.00201344|   5.9219e-05|  0.00%|        self.screen.blit(self.welcome_text, self.welcome_textRect)
    52|        34|            0|            0|  0.00%|        self.screen.blit(self.instructions_text, self.instructions_textRect)
    53|         0|            0|            0|  0.00%|
    54|         0|            0|            0|  0.00%|
    55|        35|            0|            0|  0.00%|    def handle_input(self, event_list):
    56|        34|            0|            0|  0.00%|        mouse_pos = pygame.mouse.get_pos()
    57|        34|            0|            0|  0.00%|        if self.play_textRect.collidepoint(mouse_pos):
    58|         0|            0|            0|  0.00%|            self.hovered = True
    59|         0|            0|            0|  0.00%|        else:
    60|        34|            0|            0|  0.00%|            self.hovered = False
    61|        51|            0|            0|  0.00%|        for event in event_list:
    62|        17|            0|            0|  0.00%|            if event.type == KEYDOWN:
    63|         1|            0|            0|  0.00%|                if event.key == K_RETURN:
    64|         1|            0|            0|  0.00%|                    self.next_scene = level_two.LevelTwo(self.screen)
(call)|         1|      0.25569|      0.25569|  0.46%|# .\level_two.py:9 __init__
    65|        17|            0|            0|  0.00%|            if event.type == MOUSEBUTTONUP:
    66|         0|            0|            0|  0.00%|                if self.hovered:
    67|         0|            0|            0|  0.00%|                    self.next_scene = level_one.LevelOne(self.screen)
    68|         0|            0|            0|  0.00%|
    69|        35|            0|            0|  0.00%|    def update(self):
    70|        34|            0|            0|  0.00%|        pass
    71|         0|            0|            0|  0.00%|
    72|         2|            0|            0|  0.00%|    def get_music_file(self):
    73|         1|            0|            0|  0.00%|        return "intro.ogg"
File: .\block.py
File duration: 0.0150137s (0.03%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         0|            0|            0|  0.00%|
     2|         2|            0|            0|  0.00%|import pygame
     3|         0|            0|            0|  0.00%|
     4|         0|            0|            0|  0.00%|
     5|         3|            0|            0|  0.00%|class Block(pygame.sprite.Sprite):
(call)|         1|            0|            0|  0.00%|# .\block.py:5 Block
     6|       751|            0|            0|  0.00%|    def __init__(self, x, y, surf):
     7|       750|   0.00700212|  9.33615e-06|  0.01%|        super(Block, self).__init__()
(call)|       750|   0.00499511|  6.66014e-06|  0.01%|# C:\Users\drsna\AppData\Local\Programs\Python\Python39\lib\site-packages\pygame\sprite.py:112 __init__
     8|       750|   0.00201702|  2.68936e-06|  0.00%|        self.surf = surf
     9|       750|   0.00599456|  7.99274e-06|  0.01%|        self.rect = self.surf.get_rect(topleft=[x, y])
File: <string>_1
File duration: 0.00755334s (0.01%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|      3774|   0.00755334|  2.00141e-06|  0.01%|
File: <string>_2
File duration: 0.000963688s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|       358|  0.000963688|  2.69187e-06|  0.00%|
File: <frozen zipimport>
File duration: 0s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         0|            0|            0|  0.00%|
     2|         0|            0|            0|  0.00%|
     3|         0|            0|            0|  0.00%|
     4|         0|            0|            0|  0.00%|
     5|         0|            0|            0|  0.00%|
     6|         0|            0|            0|  0.00%|
     7|         0|            0|            0|  0.00%|
     8|         0|            0|            0|  0.00%|
     9|         0|            0|            0|  0.00%|
    10|         0|            0|            0|  0.00%|
    11|         0|            0|            0|  0.00%|
    12|         0|            0|            0|  0.00%|
    13|         0|            0|            0|  0.00%|
    14|         0|            0|            0|  0.00%|
    15|         0|            0|            0|  0.00%|
    16|         0|            0|            0|  0.00%|
    17|         0|            0|            0|  0.00%|
    18|         0|            0|            0|  0.00%|
    19|         0|            0|            0|  0.00%|
    20|         0|            0|            0|  0.00%|
    21|         0|            0|            0|  0.00%|
    22|         0|            0|            0|  0.00%|
    23|         0|            0|            0|  0.00%|
    24|         0|            0|            0|  0.00%|
    25|         0|            0|            0|  0.00%|
    26|         0|            0|            0|  0.00%|
    27|         0|            0|            0|  0.00%|
    28|         0|            0|            0|  0.00%|
    29|         0|            0|            0|  0.00%|
    30|         0|            0|            0|  0.00%|
    31|         0|            0|            0|  0.00%|
    32|         0|            0|            0|  0.00%|
    33|         0|            0|            0|  0.00%|
    34|         0|            0|            0|  0.00%|
    35|         0|            0|            0|  0.00%|
    36|         0|            0|            0|  0.00%|
    37|         0|            0|            0|  0.00%|
    38|         0|            0|            0|  0.00%|
    39|         0|            0|            0|  0.00%|
    40|         0|            0|            0|  0.00%|
    41|         0|            0|            0|  0.00%|
    42|         0|            0|            0|  0.00%|
    43|         0|            0|            0|  0.00%|
    44|         0|            0|            0|  0.00%|
    45|         0|            0|            0|  0.00%|
    46|         0|            0|            0|  0.00%|
    47|         0|            0|            0|  0.00%|
    48|         0|            0|            0|  0.00%|
    49|         0|            0|            0|  0.00%|
    50|         0|            0|            0|  0.00%|
    51|         0|            0|            0|  0.00%|
    52|         0|            0|            0|  0.00%|
    53|         0|            0|            0|  0.00%|
    54|         0|            0|            0|  0.00%|
    55|         0|            0|            0|  0.00%|
    56|         0|            0|            0|  0.00%|
    57|         0|            0|            0|  0.00%|
    58|         0|            0|            0|  0.00%|
    59|         0|            0|            0|  0.00%|
    60|         0|            0|            0|  0.00%|
    61|         0|            0|            0|  0.00%|
    62|         0|            0|            0|  0.00%|
    63|        12|            0|            0|  0.00%|
    64|        12|            0|            0|  0.00%|
    65|         0|            0|            0|  0.00%|
    66|         0|            0|            0|  0.00%|
    67|        12|            0|            0|  0.00%|
    68|         0|            0|            0|  0.00%|
    69|        12|            0|            0|  0.00%|
    70|        12|            0|            0|  0.00%|
    71|         0|            0|            0|  0.00%|
    72|        12|            0|            0|  0.00%|
    73|         0|            0|            0|  0.00%|
    74|        12|            0|            0|  0.00%|
    75|        12|            0|            0|  0.00%|
(call)|        12|  0.000998497|  8.32081e-05|  0.00%|# <frozen importlib._bootstrap_external>:80 _path_stat
    76|         0|            0|            0|  0.00%|
    77|         0|            0|            0|  0.00%|
    78|         0|            0|            0|  0.00%|
    79|         0|            0|            0|  0.00%|
    80|         0|            0|            0|  0.00%|
    81|         0|            0|            0|  0.00%|
    82|         0|            0|            0|  0.00%|
    83|         0|            0|            0|  0.00%|
    84|         0|            0|            0|  0.00%|
    85|         0|            0|            0|  0.00%|
    86|        12|            0|            0|  0.00%|
    87|         0|            0|            0|  0.00%|
    88|        12|            0|            0|  0.00%|
File: .\level_one.py
File duration: 0s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|import pygame
     2|         1|            0|            0|  0.00%|from player import Player
(call)|         1|   0.00799775|   0.00799775|  0.01%|# <frozen importlib._bootstrap>:1002 _find_and_load
     3|         1|            0|            0|  0.00%|from constants import *
     4|         1|            0|            0|  0.00%|from level_1_design import level_1_design
(call)|         1|     0.002985|     0.002985|  0.01%|# <frozen importlib._bootstrap>:1002 _find_and_load
     5|         1|            0|            0|  0.00%|import level
(call)|         1|     0.195002|     0.195002|  0.35%|# <frozen importlib._bootstrap>:1002 _find_and_load
     6|         1|            0|            0|  0.00%|import level_two
(call)|         1|     0.022965|     0.022965|  0.04%|# <frozen importlib._bootstrap>:1002 _find_and_load
     7|         0|            0|            0|  0.00%|
     8|         3|            0|            0|  0.00%|class LevelOne(level.Level):
(call)|         1|            0|            0|  0.00%|# .\level_one.py:8 LevelOne
     9|         1|            0|            0|  0.00%|    def __init__(self, screen, retry=False):
    10|         0|            0|            0|  0.00%|        self.level_design = level_1_design
    11|         0|            0|            0|  0.00%|        # -- Background
    12|         0|            0|            0|  0.00%|        self.level_1_background = pygame.image.load("level_1_backround.png")
    13|         0|            0|            0|  0.00%|        self.level_1_background_rect = self.level_1_background.get_rect(topleft=[X_BORDER,Y_BORDER])
    14|         0|            0|            0|  0.00%|        super().__init__(screen, retry)
    15|         0|            0|            0|  0.00%|        # sets the circle that'll be around the character
    16|         0|            0|            0|  0.00%|        self.radius = LEVEL_1_LIGHT_RADIUS
    17|         0|            0|            0|  0.00%|        #-- Exit Block
    18|         0|            0|            0|  0.00%|        self.exit_block = pygame.image.load("exit.png")
    19|         0|            0|            0|  0.00%|        self.exit_block_rect = self.exit_block.get_rect(topleft=[X_BORDER, Y_BORDER])
    20|         0|            0|            0|  0.00%|        # retry
    21|         0|            0|            0|  0.00%|        self.retry = retry
    22|         0|            0|            0|  0.00%|
    23|         1|            0|            0|  0.00%|    def draw(self):
    24|         0|            0|            0|  0.00%|        self.surf = pygame.surface.Surface((SCREEN_WIDTH, SCREEN_HEIGHT))
    25|         0|            0|            0|  0.00%|
    26|         0|            0|            0|  0.00%|        clip_center = self.player.rect.center
    27|         0|            0|            0|  0.00%|        # clear screen and set clipping region
    28|         0|            0|            0|  0.00%|        clip_rect = pygame.Rect(
    29|         0|            0|            0|  0.00%|            clip_center[0] - self.radius,
    30|         0|            0|            0|  0.00%|            clip_center[1] - self.radius,
    31|         0|            0|            0|  0.00%|            self.radius * 2,
    32|         0|            0|            0|  0.00%|            self.radius * 2,
    33|         0|            0|            0|  0.00%|        )
    34|         0|            0|            0|  0.00%|        self.surf.set_clip(clip_rect)
    35|         0|            0|            0|  0.00%|
    36|         0|            0|            0|  0.00%|        self.cover_surf = pygame.Surface((self.radius * 2, self.radius * 2))
    37|         0|            0|            0|  0.00%|        self.cover_surf.fill(0)
    38|         0|            0|            0|  0.00%|        self.cover_surf.set_colorkey((255, 255, 255))
    39|         0|            0|            0|  0.00%|        pygame.draw.circle(
    40|         0|            0|            0|  0.00%|            self.cover_surf, (255, 255, 255), (self.radius, self.radius), self.radius
    41|         0|            0|            0|  0.00%|        )
    42|         0|            0|            0|  0.00%|
    43|         0|            0|            0|  0.00%|        super(LevelOne, self).draw(self.surf)
    44|         0|            0|            0|  0.00%|
    45|         0|            0|            0|  0.00%|
    46|         0|            0|            0|  0.00%|        # draw transparent circle and update display
    47|         0|            0|            0|  0.00%|
    48|         0|            0|            0|  0.00%|        self.surf.blit(self.cover_surf, clip_rect)
    49|         0|            0|            0|  0.00%|
    50|         0|            0|            0|  0.00%|        self.screen.blit(self.surf, (0,0))
    51|         0|            0|            0|  0.00%|
    52|         0|            0|            0|  0.00%|        self.draw_after_clipping()
    53|         0|            0|            0|  0.00%|
    54|         1|            0|            0|  0.00%|    def get_level_design(self):
    55|         0|            0|            0|  0.00%|        return self.level_design
    56|         0|            0|            0|  0.00%|
    57|         1|            0|            0|  0.00%|    def get_background(self):
    58|         0|            0|            0|  0.00%|        return [self.level_1_background, self.level_1_background_rect]
    59|         0|            0|            0|  0.00%|
    60|         1|            0|            0|  0.00%|    def update(self):
    61|         0|            0|            0|  0.00%|        super().update()
    62|         0|            0|            0|  0.00%|        if self.player.rect.colliderect(self.exit_block_rect):
    63|         0|            0|            0|  0.00%|            self.next_scene = level_two.LevelTwo(self.screen)
    64|         0|            0|            0|  0.00%|        self.radius = LEVEL_1_LIGHT_RADIUS+(SCREEN_HEIGHT-self.player.rect.bottom)/4
    65|         0|            0|            0|  0.00%|
    66|         1|            0|            0|  0.00%|    def draw_after_clipping(self):
    67|         0|            0|            0|  0.00%|        super().draw_after_clipping()
    68|         0|            0|            0|  0.00%|        for entity in self.npcs:
    69|         0|            0|            0|  0.00%|            entity.draw_after_clipping()
    70|         0|            0|            0|  0.00%|        self.screen.blit(self.exit_block, self.exit_block_rect)
    71|         0|            0|            0|  0.00%|
    72|         1|            0|            0|  0.00%|    def get_level_tmx(self):
    73|         0|            0|            0|  0.00%|        return "level1.tmx"
    74|         0|            0|            0|  0.00%|
    75|         1|            0|            0|  0.00%|    def get_dialog_strings(self):
    76|         0|            0|            0|  0.00%|        return [
    77|         0|            0|            0|  0.00%|            "Ah! I see you were able to find your way!",
    78|         0|            0|            0|  0.00%|            "Let's see if you've got what it takes!"
    79|         0|            0|            0|  0.00%|        ]
    80|         0|            0|            0|  0.00%|
    81|         1|            0|            0|  0.00%|    def get_current_level(self):
    82|         0|            0|            0|  0.00%|        return 1
File: .\game_over.py
File duration: 0s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|import pygame
     2|         1|            0|            0|  0.00%|from pygame.locals import KEYDOWN, K_RETURN, MOUSEBUTTONUP
     3|         1|            0|            0|  0.00%|import level_one
(call)|         1|            0|            0|  0.00%|# <frozen importlib._bootstrap>:203 _lock_unlock_module
     4|         1|            0|            0|  0.00%|import level_two
(call)|         1|            0|            0|  0.00%|# <frozen importlib._bootstrap>:203 _lock_unlock_module
     5|         1|            0|            0|  0.00%|import level_three
(call)|         1|            0|            0|  0.00%|# <frozen importlib._bootstrap>:203 _lock_unlock_module
     6|         0|            0|            0|  0.00%|
     7|         3|            0|            0|  0.00%|class GameOver:
(call)|         1|            0|            0|  0.00%|# .\game_over.py:7 GameOver
     8|         1|            0|            0|  0.00%|    def __init__(self, screen, text="You found your way! Thanks for playing!", replay=1, retry=False):
     9|         0|            0|            0|  0.00%|        self.screen = screen
    10|         0|            0|            0|  0.00%|        self.screen_width = screen.get_width()
    11|         0|            0|            0|  0.00%|        self.screen_height = screen.get_height()
    12|         0|            0|            0|  0.00%|        self.hovered_play_again = False
    13|         0|            0|            0|  0.00%|        self.hovered_exit_game = False
    14|         0|            0|            0|  0.00%|        self.game_surf = pygame.Surface(
    15|         0|            0|            0|  0.00%|            (self.screen_width - 20, self.screen_height - 20)
    16|         0|            0|            0|  0.00%|        )
    17|         0|            0|            0|  0.00%|        self.font = pygame.font.SysFont("monospace", 32)
    18|         0|            0|            0|  0.00%|        self.welcome_text = self.font.render("Lightward", True, [255, 255, 255])
    19|         0|            0|            0|  0.00%|        self.welcome_textRect = self.welcome_text.get_rect(
    20|         0|            0|            0|  0.00%|            center=[self.screen_width / 2, (self.screen_height - 500) / 2]
    21|         0|            0|            0|  0.00%|        )
    22|         0|            0|            0|  0.00%|        self.instructions_text = self.font.render(
    23|         0|            0|            0|  0.00%|            text, True, [255, 255, 255]
    24|         0|            0|            0|  0.00%|        )
    25|         0|            0|            0|  0.00%|        self.instructions_textRect = self.instructions_text.get_rect(
    26|         0|            0|            0|  0.00%|            center=[self.screen_width / 2, self.screen_height / 2]
    27|         0|            0|            0|  0.00%|        )
    28|         0|            0|            0|  0.00%|
    29|         0|            0|            0|  0.00%|        self.play_again_text = self.font.render("PLAY AGAIN", True, [255, 255, 255])
    30|         0|            0|            0|  0.00%|        self.play_again_textRect = self.play_again_text.get_rect(
    31|         0|            0|            0|  0.00%|            center=[self.screen_width / 2, (self.screen_height + 200) / 2]
    32|         0|            0|            0|  0.00%|        )
    33|         0|            0|            0|  0.00%|        self.play_again_hover_text = self.font.render(
    34|         0|            0|            0|  0.00%|            "PLAY AGAIN", True, pygame.Color("black"), pygame.Color("white")
    35|         0|            0|            0|  0.00%|        )
    36|         0|            0|            0|  0.00%|        self.exit_text = self.font.render("Goodbye!", True, [255, 255, 255])
    37|         0|            0|            0|  0.00%|        self.exit_textRect = self.exit_text.get_rect(
    38|         0|            0|            0|  0.00%|            center=[self.screen_width / 2, (self.screen_height + 400) / 2]
    39|         0|            0|            0|  0.00%|        )
    40|         0|            0|            0|  0.00%|        self.exit_hover_text = self.font.render(
    41|         0|            0|            0|  0.00%|            "Goodbye!", True, pygame.Color("black"), pygame.Color("white")
    42|         0|            0|            0|  0.00%|        )
    43|         0|            0|            0|  0.00%|        self.next_scene = None
    44|         0|            0|            0|  0.00%|        self.replay = replay
    45|         0|            0|            0|  0.00%|        self.retry = retry
    46|         0|            0|            0|  0.00%|
    47|         1|            0|            0|  0.00%|    def draw(self):
    48|         0|            0|            0|  0.00%|        self.screen.fill(pygame.Color("white"))
    49|         0|            0|            0|  0.00%|        self.game_surf.fill((0, 0, 0))
    50|         0|            0|            0|  0.00%|        self.screen.blit(self.game_surf, (10, 10))
    51|         0|            0|            0|  0.00%|        self.screen.blit(self.welcome_text, self.welcome_textRect)
    52|         0|            0|            0|  0.00%|        self.screen.blit(self.instructions_text, self.instructions_textRect)
    53|         0|            0|            0|  0.00%|        if self.hovered_play_again:
    54|         0|            0|            0|  0.00%|            self.screen.blit(self.play_again_hover_text, self.play_again_textRect)
    55|         0|            0|            0|  0.00%|        else:
    56|         0|            0|            0|  0.00%|            self.screen.blit(self.play_again_text, self.play_again_textRect)
    57|         0|            0|            0|  0.00%|        if self.hovered_exit_game:
    58|         0|            0|            0|  0.00%|            self.screen.blit(self.exit_hover_text, self.play_again_textRect)
    59|         0|            0|            0|  0.00%|        else:
    60|         0|            0|            0|  0.00%|            self.screen.blit(self.exit_text, self.exit_textRect)
    61|         0|            0|            0|  0.00%|
    62|         1|            0|            0|  0.00%|    def handle_input(self, event_list):
    63|         0|            0|            0|  0.00%|        mouse_pos = pygame.mouse.get_pos()
    64|         0|            0|            0|  0.00%|        if self.play_again_textRect.collidepoint(mouse_pos):
    65|         0|            0|            0|  0.00%|            self.hovered_play_again = True
    66|         0|            0|            0|  0.00%|        else:
    67|         0|            0|            0|  0.00%|            self.hovered_play_again = False
    68|         0|            0|            0|  0.00%|        if self.exit_textRect.collidepoint(mouse_pos):
    69|         0|            0|            0|  0.00%|            self.hovered_exit = True
    70|         0|            0|            0|  0.00%|        else:
    71|         0|            0|            0|  0.00%|            self.hovered_exit = False
    72|         0|            0|            0|  0.00%|        for event in event_list:
    73|         0|            0|            0|  0.00%|            if event.type == KEYDOWN:
    74|         0|            0|            0|  0.00%|                if event.key == K_RETURN:
    75|         0|            0|            0|  0.00%|                    if not self.retry:
    76|         0|            0|            0|  0.00%|                        if self.replay == 1:
    77|         0|            0|            0|  0.00%|                            self.next_scene = level_one.LevelOne(self.screen, True)
    78|         0|            0|            0|  0.00%|                        elif self.replay == 2:
    79|         0|            0|            0|  0.00%|                            self.next_scene = level_two.LevelTwo(self.screen, True)
    80|         0|            0|            0|  0.00%|                        else:
    81|         0|            0|            0|  0.00%|                            self.next_scene = level_three.LevelThree(self.screen, True)
    82|         0|            0|            0|  0.00%|                    else:
    83|         0|            0|            0|  0.00%|                        self.next_scene = level_one.LevelOne(self.screen, False)
    84|         0|            0|            0|  0.00%|            if event.type == MOUSEBUTTONUP:
    85|         0|            0|            0|  0.00%|                if self.hovered_play_again:
    86|         0|            0|            0|  0.00%|                    if not self.retry:
    87|         0|            0|            0|  0.00%|                        if self.replay == 1:
    88|         0|            0|            0|  0.00%|                            self.next_scene = level_one.LevelOne(self.screen, True)
    89|         0|            0|            0|  0.00%|                        elif self.replay == 2:
    90|         0|            0|            0|  0.00%|                            self.next_scene = level_two.LevelTwo(self.screen, True)
    91|         0|            0|            0|  0.00%|                        else:
    92|         0|            0|            0|  0.00%|                            self.next_scene = level_three.LevelThree(self.screen, True)
    93|         0|            0|            0|  0.00%|                    else:
    94|         0|            0|            0|  0.00%|                        self.next_scene = level_one.LevelOne(self.screen, False)
    95|         0|            0|            0|  0.00%|
    96|         0|            0|            0|  0.00%|                if self.hovered_exit:
    97|         0|            0|            0|  0.00%|                    pygame.quit()
    98|         0|            0|            0|  0.00%|
    99|         1|            0|            0|  0.00%|    def update(self):
   100|         0|            0|            0|  0.00%|        pass
   101|         0|            0|            0|  0.00%|
   102|         1|            0|            0|  0.00%|    def get_music_file(self):
   103|         0|            0|            0|  0.00%|        return "end.mp3"
File: .\constants.py
File duration: 0s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|X_BORDER = 0
     2|         1|            0|            0|  0.00%|Y_BORDER = 64
     3|         1|            0|            0|  0.00%|GRAVITY = 1
     4|         1|            0|            0|  0.00%|JUMP_VELOCITY = -9
     5|         1|            0|            0|  0.00%|SCREEN_WIDTH = 1280
     6|         1|            0|            0|  0.00%|SCREEN_HEIGHT = 800
     7|         1|            0|            0|  0.00%|LEVEL_1_LIGHT_RADIUS = 50
File: .\level_1_design.py
File duration: 0s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|import pygame
     2|         0|            0|            0|  0.00%|
     3|         1|            0|            0|  0.00%|level_1_design = """E  P     N
     4|         0|            0|            0|  0.00%|   XXX        X
     5|         0|            0|            0|  0.00%|XXX  XXXXXXXXXXXX
     6|         0|            0|            0|  0.00%|       XXXXXX     XXXXXX
     7|         0|            0|            0|  0.00%|
     8|         0|            0|            0|  0.00%|              XXXX
     9|         0|            0|            0|  0.00%|
    10|         0|            0|            0|  0.00%|           XXXX
    11|         0|            0|            0|  0.00%|
    12|         0|            0|            0|  0.00%|      XXXX
    13|         0|            0|            0|  0.00%|
    14|         0|            0|            0|  0.00%|          XXXX
    15|         0|            0|            0|  0.00%|             XXXXXXXXX
    16|         0|            0|            0|  0.00%|                 X     X
    17|         0|            0|            0|  0.00%|        XXXXX  X    XXXX
    18|         0|            0|            0|  0.00%|      XXX   XXXXXXXXX
    19|         0|            0|            0|  0.00%|     XX     X
    20|         0|            0|            0|  0.00%|   XXXXXXXXXXXXXXXXXXXXX
    21|         0|            0|            0|  0.00%|"""
File: .\level_2_design.py
File duration: 0s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|import pygame
     2|         0|            0|            0|  0.00%|
     3|         1|            0|            0|  0.00%|level_2_design = """E
     4|         0|            0|            0|  0.00%|   XXX PX      X       X
     5|         0|            0|            0|  0.00%|XXX   X    X      X    X
     6|         0|            0|            0|  0.00%|XXXXXXXXXXXXXXXXXXXXX  X
     7|         0|            0|            0|  0.00%|             X        XX
     8|         0|            0|            0|  0.00%|    XXX  XXX X   X  X  X
     9|         0|            0|            0|  0.00%|  X      XXX X X  XX   X
    10|         0|            0|            0|  0.00%|X     X  XXX X         X
    11|         0|            0|            0|  0.00%| XXXXX  XXXX XXXXXXXX  X
    12|         0|            0|            0|  0.00%|         XXX X    N    X
    13|         0|            0|            0|  0.00%| XXXXXX  XXX X        XX
    14|         0|            0|            0|  0.00%|         XXX X   XXXXX X
    15|         0|            0|            0|  0.00%|X  X  X  XXX X X       X
    16|         0|            0|            0|  0.00%| X  X  X XXX X   X  XXXX
    17|         0|            0|            0|  0.00%|         XXX X X       X
    18|         0|            0|            0|  0.00%|   X X XXXXX X XXXXXX  X
    19|         0|            0|            0|  0.00%|XX       XXX          XX
    20|         0|            0|            0|  0.00%|p  XXXXXXXXXXXXXXXXXXXXX
    21|         0|            0|            0|  0.00%|"""
File: .\level_3_design.py
File duration: 0s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|import pygame
     2|         0|            0|            0|  0.00%|
     3|         1|            0|            0|  0.00%|level_3_design = """E
     4|         0|            0|            0|  0.00%|   XXXP X      X       X
     5|         0|            0|            0|  0.00%|XXX   X    X      X    X
     6|         0|            0|            0|  0.00%|XXXXXXXXXXXXXXXXXXXXX  X
     7|         0|            0|            0|  0.00%|             X        XX
     8|         0|            0|            0|  0.00%|    XXX  XXX X   X  X  X
     9|         0|            0|            0|  0.00%|  X      XXX X X  XX   X
    10|         0|            0|            0|  0.00%|X     X  XXX X         X
    11|         0|            0|            0|  0.00%| XXXXX  XXXX XXXXXXXX  X
    12|         0|            0|            0|  0.00%|         XXX X    N    X
    13|         0|            0|            0|  0.00%| XXXXXX  XXX X        XX
    14|         0|            0|            0|  0.00%|         XXX X   XXXXX X
    15|         0|            0|            0|  0.00%|X  X  X  XXX X X       X
    16|         0|            0|            0|  0.00%| X  X  X XXX X   X  XXXX
    17|         0|            0|            0|  0.00%|         XXX X X       X
    18|         0|            0|            0|  0.00%|   X X XXXXX X XXXXXX  X
    19|         0|            0|            0|  0.00%|XX       XXX          XX
    20|         0|            0|            0|  0.00%|p  XXXXXXXXXXXXXXXXXXXXX
    21|         0|            0|            0|  0.00%|"""
File: <string>_3
File duration: 0s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|
File: <string>_0
File duration: 0s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|
File: <string>
File duration: 0s (0.00%)
Line #|      Hits|         Time| Time per hit|      %|Source code
------+----------+-------------+-------------+-------+-----------
     1|         2|            0|            0|  0.00%|
