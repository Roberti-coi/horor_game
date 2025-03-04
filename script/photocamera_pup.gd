extends Node3D

var photocamera 

func _ready():
	photocamera = get_node("/root/" + get_tree().current_scene.name + "/scene/photocamera")
func interact():
	photocamera.picked_up = true
