extends StaticBody3D


var flashlight_energy
var energy_add_amount = 0.5
#Called when the node enters the scene tree for the first time.
func _ready():
	flashlight_energy = get_node("/root/" + get_tree().current_scene.name + "/UI/flashlight_stuff/flashlight_slider")
func interact():
	flashlight_energy.value += energy_add_amount
	queue_free()
