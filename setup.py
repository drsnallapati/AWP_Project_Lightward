from cx_Freeze import setup, Executable

exe = Executable("main.py", target_name="lightward")
includefiles=[
    'ball_red.png',
    'ball_yellow.png',
    'Bigger_bosses.png',
    'end.mp3',
    'exit.png',
    'health.png',
    'intro.ogg',
    'intro_scene.png',
    'level1.tmx',
    'level2.tmx',
    'level3.tmx',
    'Levels.wav',
    'level_1_backround.png',
    'level_2_backround.png',
    'level_3_backround.png',
    'original exit.png',
    'spike.png',
    'sprite_sheet.png',
    'Sprute.png',
    'threeformsPJ2x.png'
]
includes=[]
excludes=[]
packages=["pygame", "pytmx"]
setup(
    version="1.0",
    description="No desc",
    author = "Spandana Nallapati",
    name="Lightward",
    options={'build_exe': {'excludes':excludes,'packages':packages,'include_files':includefiles}},
    executables = [exe]
)
