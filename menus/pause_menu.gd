extends Control

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		pause()

func pause():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
	var new_pause_state = not get_tree().paused
	get_tree().paused = new_pause_state
	self.visible = new_pause_state
	$CenterContainer/VBoxContainer/ResumeButton.grab_focus()

func unpause():
	Input.set_mouse_mode(Input.MOUSE_MODE_HIDDEN)
	var new_pause_state = false
	get_tree().paused = new_pause_state
	self.visible = false

func _on_back_to_menu_button_pressed():
	unpause()
	MenuTransition.change_scene("res://menus/menu.tscn")


func _on_settings_button_pressed():
	pass # Replace with function body.


func _on_resume_button_pressed():
	unpause()
