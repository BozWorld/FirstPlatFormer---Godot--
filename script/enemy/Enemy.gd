extends "res://script/basics/Actor.gd"

func _ready() -> void :
	#set_physics_process(false)
	new_velocity.x = -speed.x
	
func _physics_process(delta: float ) -> void:
	print("hello")
	new_velocity.y += gravity * delta
	if is_on_wall():
		new_velocity.x *=  -1.0
	set_velocity(new_velocity)
	move_and_slide()


func _on_stomp_detector_body_entered(body : PhysicsBody2D) -> void:
	if body.global_position.y > get_node("StompDetector").global_position.y:
		return
	get_node("CollisionShape2D").disabled = true
	queue_free() # Replace with function body.
