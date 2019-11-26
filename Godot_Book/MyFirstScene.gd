extends Node2D


const MOVEMENT_SPEED = 50 # pixels per second
var input_direction = 0 # 0 is no movement, 1 is right, -1 is left

# user defined signal
signal keyinput()

func _ready():
	self.connect("keyinput", self, "_on_keyinput")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	$Sprite.position.x += input_direction * MOVEMENT_SPEED * delta

func _input(event):
	if event.is_action_pressed("ui_left"):
		emit_signal("keyinput", -1)
	elif event.is_action_pressed("ui_right"):
		emit_signal("keyinput", 1)
	elif event.is_action_released("ui_left"):
		emit_signal("keyinput", 0)
	elif event.is_action_released("ui_right"):
		emit_signal("keyinput", 0)

func _on_keyinput(d):
	input_direction = d;

func _on_Button_pressed():
	$Sprite.visible = not $Sprite.visible

