extends RigidBody2D


@export var force: float


func _process(_delta):
	if Input.is_action_just_pressed("Tap"):
		apply_impulse(Vector2.UP * force)
