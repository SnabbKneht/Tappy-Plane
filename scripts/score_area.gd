extends Area2D


signal passed


func _on_body_entered(body):
	if body is Player:
		passed.emit()
