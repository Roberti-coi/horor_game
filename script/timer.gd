extends Label

var time = 0
var timer_on = false

func _ready() -> void:
	timer_on = true  

func _process(delta):
	if timer_on:
		time += delta * 3
		var mils = int(fmod(time, 1) * 1000)  # Приводим к целому числу
		var secs = int(fmod(time, 60))
		var mins = int(fmod(time / 60, 60))
		var hr = int(fmod(time / 3600, 24))
		var dy = int(fmod(time / 86400, 30)) 

		var time_passed = "%02d : %02d : %02d : %02d : %03d" % [dy, hr, mins, secs, mils]
		text = time_passed  # Обновляем текст метки
#
