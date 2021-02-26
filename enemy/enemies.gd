extends Node2D

var max_enemy = 5
var enemy = load("res://enemy.tscn")

func _ready():
	randomize()


func _physics_process(_delta):
	if get_child_count() < max_enemy:
		if randf() < 0.05:
			var enemy = enemy.instance()
			enemy.position.y = -100
			enemy.position.x = randi() % 1024
			add_child(enemy)
