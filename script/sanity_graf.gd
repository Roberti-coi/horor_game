extends Line2D

var colon_count = 100
var step = 10
var x_coord = []
var y_coord = []
var heartbeat = [0, 0, 0, -50, 0, 0, 50, -190, 0]

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var arr = [1, 2, 3]
	for x in range(0, colon_count):
		x_coord.append(step*x)
		y_coord.append(0)
	closed = false
	drow_graph()
	pass

func drow_graph() -> void:
	clear_points()
	for i in range(colon_count):
		add_point(Vector2(x_coord[i], y_coord[i]))
	pass
	
func change_graph(value: float) ->void:
	y_coord.pop_front()
	y_coord.append(300 - value)
	drow_graph()
	pass # Replace with function body.

func _on_v_slider_value_changed(value: float) -> void:
	change_graph(value)
	pass

func _on_sanity_timer_timeout() -> void:
	var slider = $"../../../VSlider"
	change_graph(slider.value)
	pass # Replace with function body.

func _on_heartbeat_timer_timeout() -> void:
	y_coord.append_array(heartbeat)
	pass # Replace with function body.
