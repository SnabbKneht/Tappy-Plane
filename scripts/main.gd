extends Node


@onready var score_label = $ScoreLabel


var score


func _ready():
	score = 0


func _on_plane_crashed(_position):
	print('Game over.')


func _on_rock_passed():
	score += 1
	score_label.text = str(score)
