extends StaticBody2D


@export var speed: float


func _physics_process(delta):
	position.x -= speed * delta


func _on_screen_exited():
	queue_free()
