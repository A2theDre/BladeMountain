extends Node2D

var tilemap: TileMap

signal map_left_clicked(coords)

# Called when the node enters the scene tree for the first time.
func _ready():
	tilemap = $TileMap


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _unhandled_input(event):
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			if event.is_pressed():
				var target_pos = get_global_mouse_position()
				map_left_clicked.emit(target_pos)
