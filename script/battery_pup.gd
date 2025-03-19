extends Node3D

var battery 

func _ready():
	battery = get_node("/root/" + get_tree().current_scene.name + "/scene/battery")
func interact():
	battery.picked_up = true
