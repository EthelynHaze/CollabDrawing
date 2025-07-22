extends Control

@onready var tool_bar_scene_load = preload("res://scenes/sub_scenes/tool_bar_scene.tscn")
@onready var body_scene_load = preload("res://scenes/sub_scenes/body_scene.tscn")
@onready var vbox_container = $VBoxContainer
func _ready() -> void:
	var tool_bar_scene = tool_bar_scene_load.instantiate()
	var body_scene = body_scene_load.instantiate()
	# var separator = VSeparator.new()
	vbox_container.add_child(tool_bar_scene)	
	# vbox_container.add_child(separator)
	vbox_container.add_child(body_scene)