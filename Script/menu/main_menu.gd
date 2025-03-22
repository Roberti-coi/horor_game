extends Control

func play():
	get_tree().change_scene_to_file("res://Scenes/level/level_test.tscn")
	
func quit():
	get_tree().quit()

func play2() -> void:
	get_tree().change_scene_to_file("res://Scenes/level/garage_location.tscn")


func _on_solo_mouse_entered() -> void:
	$HitsSound.play()


func _on_host_mouse_entered() -> void:
	$HitsSound.play()


func _on_settings_mouse_entered() -> void:
	$HitsSound.play()


func _on_exit_mouse_entered() -> void:
	$HitsSound.play()

func _on_settings_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/menu/setting/setting_menu.tscn")
