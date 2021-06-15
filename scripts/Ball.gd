extends RigidBody2D


export(float) var impulse_multiplier = 3
export(float) var force = 1960

func _process(delta):	
	applied_force = Vector2.ZERO
	if Input.is_action_just_pressed("impulse"):
		var vector = get_global_mouse_position() - self.position
		apply_central_impulse(vector * impulse_multiplier)	

	if Input.is_action_pressed("force"):
		var direction = (get_global_mouse_position() - self.position).normalized()
		applied_force = direction * force
