extends Node


func swap_scene(scene_parent: Node, scene_path: String):
	call_deferred("_deferred_swap_scene", scene_parent, scene_path)


func _deferred_swap_scene(scene_parent: Node, scene_path: String):
	
	# Free/delete current nodes/scenes before loading new one
	for child in scene_parent.get_children():
		child.queue_free()

	# Swap in new scene
	var new_scene = load(scene_path)
	scene_parent.add_child(new_scene.instantiate())
	
	# TODO: probably emit signal for finished....?
