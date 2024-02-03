extends Control

var speed = 0

func _process(delta):
	if(Input.is_action_pressed("acelerate")):
		speed+=1
	else:
		speed = clamp(speed - 1, 0, speed)
	
	$Speed.text = str(speed)
