extends Control
#func back_to_pause():
		#get_tree().change_scene_to_file("res://Scenes/menu/main_menu.tscn")
		
#func back_to_menu():
		#get_tree().change_scene_to_file("res://Scenes/menu/main_menu.tscn")

func back_to_pause():
	if is_instance_valid(get_tree()):
		get_tree().change_scene_to_file("res://Scenes/menu/pause_menu.tscn")


func back_to_main_menu():
	if is_instance_valid(get_tree()):
		get_tree().change_scene_to_file("res://Scenes/menu/main_menu.tscn")



func _on_confirm_pressed():
	AudioServer.set_bus_volume_db(0, linear_to_db($AudioOptions/Container/Master.value))
	AudioServer.set_bus_volume_db(1, linear_to_db($AudioOptions/Container/music.value))
	AudioServer.set_bus_volume_db(2, linear_to_db($AudioOptions/Container/sfx.value))
