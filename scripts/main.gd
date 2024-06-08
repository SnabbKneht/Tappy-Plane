extends Node


@onready var plane = $Plane


func _ready():
	plane.crashed.connect(func(_pos): print('Game over.'))
