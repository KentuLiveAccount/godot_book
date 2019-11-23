extends Sprite

const MOVEMENT_SPEED = 50 # pixels per second

# Declare member variables here. Examples:
var input_direction = 0 # 0 is no movement, 1 is right, -1 is left


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	position.x += input_direction * MOVEMENT_SPEED * delta

func _input(event):
	if event.is_action_pressed("ui_left"):
		input_direction = -1
	elif event.is_action_pressed("ui_right"):
		input_direction = 1
	elif event.is_action_released("ui_left"):
		input_direction = 0
	elif event.is_action_released("ui_right"):
		input_direction = 0