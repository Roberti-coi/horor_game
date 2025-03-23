extends Control

func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		get_tree().paused = !get_tree().paused
		visible = get_tree().paused
		if get_tree().paused == true:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		if get_tree().paused == false:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	
func resume():
	get_tree().paused = false
	visible = false

func back_to_menu():
		get_tree().paused = false
		get_tree().change_scene_to_file("res://Scenes/menu/main_menu.tscn")

func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu/setting/setting_menu.tscn")
