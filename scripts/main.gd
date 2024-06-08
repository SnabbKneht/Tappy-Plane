extends Node


@onready var player = $Plane
@onready var score_label = $ScoreLabel
@onready var rock_spawner = $RockSpawner
@onready var start_button = $StartButton


var score


func _ready():
	score = 0


func _on_plane_crashed(_position):
	await get_tree().create_timer(2.0).timeout
	get_tree().reload_current_scene()


func _on_rock_passed():
	score += 1
	score_label.text = str(score)


func start_game():
	player.start()
	get_tree().call_group("obstacles", "start")
	rock_spawner.start()


func _on_start_button_pressed():
	start_button.hide()
	start_game()
