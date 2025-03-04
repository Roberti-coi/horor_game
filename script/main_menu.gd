extends Control

func play():
	get_tree().change_scene_to_file("res://scenes/garage_location.tscn")

func quit():
	get_tree().quit()
