class_name Ground
extends StaticBody2D


@onready var sprite = $Sprite2D


@export var move_distance: int
@export var speed: float


var game_started = false


var initial_position_x


func _ready():
	initial_position_x = position.x


func _physics_process(delta):
	if not game_started: return
	position.x -= delta * speed
	if initial_position_x - position.x > move_distance:
		position.x = initial_position_x


func start():
	game_started = true
