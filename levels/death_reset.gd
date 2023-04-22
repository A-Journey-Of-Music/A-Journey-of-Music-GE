extends Area2D

func _on_body_entered(body: CharacterBody2D):
	MenuTransition.change_scene("res://menus/failure.tscn")
