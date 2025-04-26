extends Node2D


@export var city_entrance: Area2D

signal on_city_entered

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


func _on_city_area_entered(area):
	print("city entered")
	on_city_entered.emit()
