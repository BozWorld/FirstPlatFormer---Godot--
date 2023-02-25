extends CharacterBody2D
class_name Actor

@export_category("character Movement")
@export var speed = Vector2(300.0,10000)
@export var gravity: = 3000.0

var vel: = Vector2.ZERO

func  _physics_process(delta: float) -> void :
	velocity.y += gravity * delta
	set_velocity(velocity)
	move_and_slide()
