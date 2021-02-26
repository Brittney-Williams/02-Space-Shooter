extends KinematicBody2D

var enemy_bullet = load("res://enemy_bullet/enemy.tscn")
onready var bullets = get_node("/root/game/bullets")
var speed = 2
var ready_to_move = true

func _ready():
	randomize()

func _physics_process(_delta):
	pass

func die(s):
	Global.score += s
	queue_free()


func _on_Shoot_timeout():
	if randi() < 0.2 and position.y > 0:
# warning-ignore:shadowed_variable
		var enemy_bullet = enemy_bullet.instance()
		enemy_bullet.position = position 
		bullets.add_child(enemy_bullet)

func _on_move_timeout():
	if randf() < 0.2 and ready_to_move:
		var new_position = Vector2(randi() % 1024,randi() % 45
		$Tween.interpolate_property(self, "position", position, new_position, speed, Tween.TRANS_LINEAR, Tween.EASE_IN_OUT)
		$Tween.start()
		ready_to_move = false

func _on_Tween_tween_all_completed():
	ready_to_move = true
