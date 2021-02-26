extends Node2D

var max_meteors = 3
var meteor = load("res://meteor/meteor.tscn")

func _ready():
	randomize()


func _physics_process(_delta):
	if get_child_count() < max_meteors:
		if randf() < 0.005:
			var meteor = meteor.instance()
			meteor.position.y = -100
			meteor.position.x = randi() % 1024
			add_child(meteor)
