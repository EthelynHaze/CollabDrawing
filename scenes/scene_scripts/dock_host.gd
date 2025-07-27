extends Control
@onready var popup_menu = preload("res://scenes/sub_scenes/popup_menu_right_mouse.tscn")

func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			print("Click right mouse button")

func _check_popup_