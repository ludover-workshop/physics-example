extends Node2D

onready var HeavyBox = preload("res://blocks/HeavyBox.tscn")
onready var Ball = preload("res://blocks/Ball.tscn")
onready var MoveWithMouseScript = preload("res://scripts/MoveWithMouse.gd")

func add_item(item_type):
	var item = item_type.instance()
	item.position = get_local_mouse_position()
	add_child(item)
	
	if Input.is_key_pressed(KEY_CONTROL):
		item.set_script(MoveWithMouseScript)
		item.set_process(true)
		
func _process(delta):
	if Input.is_action_just_pressed("add_cube"):
		add_item(HeavyBox)

	if Input.is_action_just_pressed("add_ball"):
		add_item(Ball)
		

