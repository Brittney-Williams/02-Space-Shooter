extends KinematicBody2D

var speed = 0.08
var velocity = Vector2.ZERO

func _physics_process(_delta):
	position += velocity 
	velocity.y += speed
	if position.y < -20:
		queue_free()


func _on_Timer_timeout():
	queue_free()
