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
	# Переключение видимости фонарика при нажатии кнопки
	if Input.is_action_just_pressed("flashlight"):
		visible = !visible
		$"../toggle".play()

	# Проверяем, включен ли фонарик и есть ли энергия
	if visible:
		if flashlight_energy.value > 0:
			flashlight_energy.value -= drain_rate * delta
			if flashlight_energy.value < 0:
				flashlight_energy.value = 0
		else:
			# Если энергия закончилась, выключаем фонарик
			visible = false

	# Индикатор фонарика всегда виден
	flashlight_ui.visible = true
