extends Control

var is_paused := false : 
	set(value):
		is_paused = set_is_paused(value)
	get: 
		return is_paused

func _unhandled_input(event):
	if event.is_action_pressed("pause"):
		self.is_paused = !is_paused

func set_is_paused(value):
	is_paused = value
	get_tree().paused = is_paused
	visible = is_paused
	
func _on_back_to_menu_button_pressed():
	get_tree().change_scene_to_file("res://menus/menu.tscn")


func _on_settings_button_pressed():
	pass # Replace with function body.


func _on_resume_button_pressed():
	self.is_paused = false
