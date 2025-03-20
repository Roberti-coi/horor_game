extends Node3D

var battery 

func _ready():
	battery = get_node("/root/" + get_tree().current_scene.name + "/Scene/item/battery")
func interact():
	battery.picked_up = true
