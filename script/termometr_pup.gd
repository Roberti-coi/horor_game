extends Node3D

var termometr 

func _ready():
	termometr = get_node("/root/" + get_tree().current_scene.name + "/scene/termometr")
func interact():
	termometr.picked_up = true
