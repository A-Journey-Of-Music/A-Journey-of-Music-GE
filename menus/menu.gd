extends Control

func _ready():
	# Other Ready Settings
	$VBox/StartGameButton.grab_focus()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	Globals.init_GA()

func _on_start_game_button_pressed():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	MenuTransition.change_scene("res://levels/level01.tscn")


func _on_settings_button_pressed():
	pass # Replace with function body.


func _on_quit_button_pressed():
	get_tree().quit()
