extends HBoxContainer

var item_array = []
var item_count = item_array.size()

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if item_array.size() != item_count:
		for i in item_array.size():
			var item_name = "Cell%d/Icon Container/Cell Icon/Cell Container/Item Contaner/Item Icon" % (i+1)
			var Item = get_node(item_name)
			Item.set_texture(load("res://textures/item/%s.png" % item_array[i]))
			item_count = item_array.size()
	pass

func add_item(item: String) -> void:
	if item_count < 5:
		item_array.append(item)
	else:
		print('Инвентарь заполнен')
	pass
