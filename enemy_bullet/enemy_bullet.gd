extends Area2D

var speed = 1.3
var velocity = Vector2.ZERO

func _physics_process(_delta):
	position += velocity 
	velocity.y += speed
	if position.y > 620:
		queue_free()



func _on_enemy_bullet_body_entered(body):
	body.die()
	queue_free()
