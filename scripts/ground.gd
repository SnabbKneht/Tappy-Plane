extends StaticBody2D


@onready var sprite = $Sprite2D


@export var move_distance: int
@export var speed: float


var initial_position_x


func _ready():
	initial_position_x = position.x


func _process(delta):
	position.x -= delta * speed
	if initial_position_x - position.x > move_distance:
		position.x = initial_position_x
