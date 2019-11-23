extends Node2D


const MOVEMENT_SPEED = 50 # pixels per second

# Declare member variables here. Examples:
var sprite_node

func _ready():
	sprite_node = get_node("Sprite")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var input_direction = 0 # 0 is no movement, 1 is right, -1 is left

	if Input.is_action_pressed("ui_left"):
		input_direction = -1
	elif Input.is_action_pressed("ui_right"):
		input_direction = 1

	sprite_node.position.x += input_direction * MOVEMENT_SPEED * delta


func _on_Button_pressed():
	$Sprite.visible = not $Sprite.visible

