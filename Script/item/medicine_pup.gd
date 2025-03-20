extends Node3D

var medicine 

func _ready():
	medicine = get_node("/root/" + get_tree().current_scene.name + "/Scene/item/medicine")
func interact():
	medicine.picked_up = true
