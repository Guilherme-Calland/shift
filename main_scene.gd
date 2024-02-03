extends Control

var speed : float = 0
var gear : int = 1

@export var aceleration : float = 1
@export var speedShift : int = 30

func _process(_delta):
	if(Input.is_action_pressed("acelerate")):
		if(speed < speedShift * gear):
			speed = clamp(speed + (aceleration/gear), 0, speedShift * gear)
	else:
		speed = clamp(speed - aceleration, 0, speed)
	
	if speed >= speedShift * gear:
		speed = clamp(speed - aceleration, speedShift * gear, speed)
	
	if(Input.is_action_just_pressed("shift up")):
		gear = clamp(gear + 1, 0, 6)
	elif(Input.is_action_just_pressed("shift down")):
		gear = clamp(gear - 1, 0, 6)
	
	$Speed.text = str(floor(speed))
	$Gear.text = str(gear)
