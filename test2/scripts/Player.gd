extends KinematicBody2D

onready var ray = $RayCast2D

var inputs = {
	'ui_up': Vector2.UP,
	'ui_down': Vector2.DOWN,
	'ui_left': Vector2.LEFT,
	'ui_right': Vector2.RIGHT,
}

func _unhandled_input(event):
	for dir in inputs.keys():
		if event.is_action_pressed(dir):
			move(dir)
	pass

func move(dir):
	var vector_pos = inputs[dir] * 16
	ray.cast_to = vector_pos
	position += vector_pos
