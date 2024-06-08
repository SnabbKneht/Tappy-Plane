extends Node


@export var rock_scene: PackedScene


func _on_timer_timeout():
	spawn_rock()


func spawn_rock():
	var new_rock = rock_scene.instantiate()
	if randi() % 2 == 0:
		new_rock.scale.y = -1
	add_child(new_rock)
