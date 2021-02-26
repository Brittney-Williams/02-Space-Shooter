extends Control

var score = 0

func _physics_process(_delta):
	$Score.text = "Score: " + str(Global.score)
