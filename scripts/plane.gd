extends RigidBody2D


@onready var animated_sprite = $AnimatedSprite2D


@export var force: float


func _ready():
	var color_variants = animated_sprite.sprite_frames.get_animation_names()
	animated_sprite.play(Array(color_variants).pick_random())


func _process(_delta):
	if Input.is_action_just_pressed("Tap"):
		apply_impulse(Vector2.UP * force)
