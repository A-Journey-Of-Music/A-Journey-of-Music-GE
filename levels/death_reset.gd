extends Area2D

@onready var death_reset_sound = $death_reset_sound

func _on_body_entered(body: CharacterBody2D):
	reset_scores()
	death_reset_sound.play()
	await death_reset_sound.finished
	get_tree().change_scene_to_file("res://menus/failure.tscn")

func reset_scores():
	Globals.increment_deaths()
	Globals.reset_score()
	Globals.reset_max_score()
