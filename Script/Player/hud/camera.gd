extends Node3D

var sens = 0.005
var zoom_speed = 10

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func _input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		get_parent().rotate_y( -event.relative.x * sens)
		rotate_x( -event.relative.y * sens)
		rotation.x = clamp(rotation.x, deg_to_rad(-90), deg_to_rad(90))
		
	if event is InputEventKey:
		if Input.is_action_pressed('zoom'):
			if $Camera3D.fov >= 25:
				$Camera3D.fov -= 1 + zoom_speed
				
		else:
			$Camera3D.fov = 90
