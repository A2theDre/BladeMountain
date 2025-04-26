extends Node


@onready var title_menu = $UI/TitleMenu

var world_map_scene = preload("res://scenes/worlds/world_map.tscn")

func _ready():
	title_menu.launch_game.connect(_launch_game)



func _launch_game():
	var instance = world_map_scene.instantiate()
	add_child(instance)
	print("Game launched.")
