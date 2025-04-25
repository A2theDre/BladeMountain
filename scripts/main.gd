extends Node


@onready var title_menu = $UI/TitleMenu

func _ready():
	title_menu.launch_game.connect(_launch_game)



func _launch_game():
	print("Game launched.")
