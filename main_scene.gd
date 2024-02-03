extends Control

var speed : float = 0
var gear : int = 1

@export var aceleration : float = 1

func _process(_delta):
	if(Input.is_action_pressed("acelerate")):
		speed+=(aceleration/gear)
	else:
		speed = clamp(speed - aceleration, 0, speed)
	
	if speed >= 60:
		if gear == 1:
			speed = 60
	
	if(Input.is_action_just_pressed("shift up")):
		gear += 1
	elif(Input.is_action_just_pressed("shift down")):
		gear -= 1
	
	$Speed.text = str(floor(speed))
	$Gear.text = str(gear)
