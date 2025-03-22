extends Node2D


@onready var animation_intro = $AnimationPlayer

func _ready():
	animation_intro.play("Black_in")
	get_tree().create_timer(3).timeout.connect(black_out)

func black_out():
	animation_intro.play("Black_out")
	get_tree().create_timer(5).timeout.connect(start_menu_scene)

func start_menu_scene():
	get_tree().change_scene_to_file("res://Scenes/menu/main_menu.tscn")
	
func _process(delta):
	if Input.is_action_just_pressed("skip"):  # Здесь "ui_accept" - это действие для клавиши Enter или Space
		get_tree().change_scene_to_file("res://Scenes/menu/main_menu.tscn")
