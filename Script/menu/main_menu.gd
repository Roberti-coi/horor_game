extends Control

func play():
	get_tree().change_scene_to_file("res://Scenes/level/level_test.tscn")

func quit():
	get_tree().quit()


func play2() -> void:
	get_tree().change_scene_to_file("res://Scenes/level/garage_location.tscn")
