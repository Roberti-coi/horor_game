extends Control 

@warning_ignore("shadowed_variable_base_class")
var is_visible = true  

func _process(_delta):
	if Input.is_action_just_pressed("ui_toggle"):  
		is_visible = !is_visible  
		self.visible = is_visible  
