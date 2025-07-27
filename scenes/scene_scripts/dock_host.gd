extends Control
@onready var popup_menu = preload("res://scenes/sub_scenes/popup_menu_right_mouse.tscn")

var popup_showing = false
func _gui_input(event: InputEvent) -> void:
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_RIGHT and event.pressed:
			_show_popup_menu_right_mouse(event.position)

func _show_popup_menu_right_mouse(mouse_position: Vector2) -> void:
	var popup_menu_scene = popup_menu.instantiate()
	self.add_child(popup_menu_scene)
	popup_menu_scene.popup(Rect2(mouse_position, Vector2.ZERO))
