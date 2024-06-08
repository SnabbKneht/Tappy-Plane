extends Node


@export var rock_scenes: Array[PackedScene]


func _on_timer_timeout():
	spawn_rock()


func spawn_rock():
	var new_rock = rock_scenes.pick_random().instantiate()
	add_child(new_rock)
