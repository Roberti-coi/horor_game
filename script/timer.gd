extends Label

var time = 0
var timer_on = false

func _ready() -> void:
	timer_on = true  

func _process(delta):
	if timer_on:
		time += delta * 3  # Увеличиваем игровое время
		var secs = int(fmod(time, 60))  # Секунды
		var mins = int(fmod(time / 60, 60))  # Минуты
		var hr = int(fmod(time / 3600, 24))  # Часы

		# Форматируем строку без дней и миллисекунд
		var time_passed = "%02d : %02d : %02d" % [hr, mins, secs]
		text = time_passed  # Обновляем текст метки
