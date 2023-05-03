extends Area2D

@onready var next_level_sound = $next_level_sound

func _on_body_entered(body: CharacterBody2D):
	next_level_sound.play()
	await next_level_sound.finished
	get_tree().change_scene_to_file("res://menus/success.tscn")
