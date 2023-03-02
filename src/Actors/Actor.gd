extends CharacterBody2D
class_name Actor

@export_category("character Movement")
@export var speed = Vector2(300.0,1000)
@export var gravity: = 850

var vel: = Vector2.ZERO

func  _physics_process(delta: float) -> void:
	velocity.y += gravity * delta
#	velocity.y = max(velocity.y, speed.y)
	set_velocity(velocity)
	move_and_slide()
