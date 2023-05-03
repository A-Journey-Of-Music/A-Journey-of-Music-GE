extends Area2D

@onready var death_reset_sound = $death_reset_sound

func _on_body_entered(body: CharacterBody2D):
	death_reset_sound.play()
	await death_reset_sound.finished
	get_tree().change_scene_to_file("res://menus/failure.tscn")
