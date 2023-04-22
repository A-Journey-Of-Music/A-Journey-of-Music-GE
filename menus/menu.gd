extends Control

func _ready():
	$VBox/StartGameButton.grab_focus()

func _on_start_game_button_pressed():
	get_tree().change_scene_to_file("res://levels/level01.tscn")


func _on_settings_button_pressed():
	pass # Replace with function body.


func _on_quit_button_pressed():
	get_tree().quit()
