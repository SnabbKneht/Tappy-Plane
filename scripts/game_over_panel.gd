extends Panel


signal restart_button_pressed


@onready var score_label = $VBoxContainer/ScoreLabel


func _on_button_pressed():
	restart_button_pressed.emit()


func update_score(score):
	score_label.text = score
