extends Actor

var direction := Vector2.ZERO

func  _physics_process(delta: float) -> void: 	
	var direction: = getDirection()
	set_velocity(calculate_move_velocity(velocity, direction,speed))
	move_and_slide()

func getDirection() -> Vector2:
	return Vector2(
		Input.get_action_strength("move_right") - Input.get_action_strength("move_left"),
		-1.0 if Input.is_action_just_pressed("jump") and is_on_floor() else 1.0
	)
	
func calculate_move_velocity(linear_velocity: Vector2,direction: Vector2, speed: Vector2
	) -> Vector2:
	var new_velocity: = linear_velocity
	new_velocity.x = speed.x * direction.x
	new_velocity.y += gravity + get_physics_process_delta_time()
	if direction.y == -1.0 :
		velocity.y = speed.y * direction.y
		set_velocity(velocity)
	return new_velocity
