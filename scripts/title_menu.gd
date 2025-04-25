extends Control

signal launch_game

# Called when the node enters the scene tree for the first time.
func _ready():
	
	# Set up the PLAY button.
	var play_button = $VBoxContainer/PlayButton
	play_button.pressed.connect(_on_play_button_pressed)
	
	
	# Get focus for keyboard control.
	play_button.grab_focus()


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_play_button_pressed():
	launch_game.emit()
