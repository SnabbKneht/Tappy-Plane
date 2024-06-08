extends Node


signal rock_passed


@export var rock_scene: PackedScene


func _on_timer_timeout():
	spawn_rock()


func spawn_rock():
	var new_rock = rock_scene.instantiate()
	if randi() % 2 == 0:
		new_rock.scale.y = -1
	new_rock.get_node("ScoreArea").passed.connect(func(): rock_passed.emit())
	add_child(new_rock)
