#extends SpotLight3D
#
#
#
## Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(_delta):
	#if Input.is_action_just_pressed("flashlight"):
		#visible = !visible
		#$toggle.play()

extends SpotLight3D

var picked_up = false
var flashlight_ui
var flashlight_energy
var drain_rate = 0.05

func _ready():
	flashlight_ui = get_node("/root/" + get_tree().current_scene.name + "/UI/flashlight_stuff")
	flashlight_energy = get_node("/root/" + get_tree().current_scene.name + "/UI/flashlight_stuff/flashlight_slider")
	flashlight_energy.max_value = 1  # Максимальное значение
	flashlight_energy.value = flashlight_energy.max_value  # Начальное значение энергии

func _process(delta):
	# Переключение видимости фонарика и UI при нажатии кнопки
	if Input.is_action_just_pressed("flashlight"):
		visible = !visible
		flashlight_ui.visible = visible
		$"../toggle".play()

	# Проверяем, включен ли фонарик и есть ли энергия
	if visible:
		if flashlight_energy.value > 0:
			flashlight_energy.value -= drain_rate * delta
			if flashlight_energy.value < 0:
				flashlight_energy.value = 0
		
				visible = false
				flashlight_ui.visible = false  
		else:
			# Если энергия закончилась, выключаем фонарик
			visible = false
			flashlight_ui.visible = false 
