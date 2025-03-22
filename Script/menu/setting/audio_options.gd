extends Control

func _ready():
	$Container/Master.value = db_to_linear(AudioServer.get_bus_volume_db(0))
	$Container/music.value = db_to_linear(AudioServer.get_bus_volume_db(1))
	$Container/sfx.value = db_to_linear(AudioServer.get_bus_volume_db(2))
	
func _on_master_mouse_exited() -> void:
	release_focus()


func _on_music_mouse_exited() -> void:
	release_focus()


func _on_sfx_mouse_exited() -> void:
	release_focus()
