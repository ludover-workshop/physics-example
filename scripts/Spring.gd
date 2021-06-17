extends Node2D

export(NodePath) var external_anchor_path

onready var external_anchor: Node2D = get_node(external_anchor_path)

onready var original_length = external_anchor_position().length()

func _process(delta):
	update()

func external_anchor_position():
	return to_local(external_anchor.global_position)

func _draw():
	var current_length = external_anchor_position().length()
	draw_line(Vector2(0,0), external_anchor_position(), Color.white, (original_length / current_length) * 30)
	
	
