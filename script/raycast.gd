extends RayCast3D

var int_text  # Переменная для хранения ссылки на текст взаимодействия
var Inventory

func _ready():
	# Получаем ссылку  взаимодействия 
	int_text = get_node("/root/" + get_tree().current_scene.name + "/UI/interact_text")
	int_text.visible = false  # Скрываем текст взаимодействия при старте
	Inventory = $"../../../UI/Inventory"
	
func _process(_delta):
	if is_colliding():
		var hit = get_collider()  
		
		# Проверяем, имеет ли объект метод взаимодействия
		if hit != null:
			if hit.has_method("interact"):
				int_text.visible = true 
				
				# Если игрок нажал кнопку взаимодействия
				if Input.is_action_just_pressed("interact"):
					Inventory.add_item(hit.item_name)
					hit.interact()  
			else:
				int_text.visible = false 
	else:
		int_text.visible = false 
