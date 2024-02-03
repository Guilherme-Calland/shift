extends Control

var speed : float = 0
@export var aceleration : float = 0.8

func _process(_delta):
	if(Input.is_action_pressed("acelerate")):
		speed+=aceleration
	else:
		speed = clamp(speed - aceleration, 0, speed)
	
	$Speed.text = str(floor(speed))
