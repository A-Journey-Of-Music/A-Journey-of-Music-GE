extends Control

func _ready():
	$CenterContainer/VBoxContainer/RetryButton.grab_focus()
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

func _on_back_to_menu_button_pressed():
	MenuTransition.change_scene("res://menus/menu.tscn")

func _on_retry_button_pressed():
	MenuTransition.change_scene("res://levels/level01.tscn")
