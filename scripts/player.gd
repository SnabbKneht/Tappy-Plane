class_name Player
extends RigidBody2D


signal crashed(position)


@onready var animated_sprite = $AnimatedSprite2D


@export var force: float


func _ready():
	var color_variants = animated_sprite.sprite_frames.get_animation_names()
	animated_sprite.play(Array(color_variants).pick_random())
	freeze = true


func _process(_delta):
	if Input.is_action_just_pressed("Tap"):
		apply_impulse(Vector2.UP * force)


func _on_body_entered(_body):
	crashed.emit(position)
	queue_free()


func start():
	freeze = false
