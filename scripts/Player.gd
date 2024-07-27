extends CharacterBody2D

@onready var animation_player = $AnimationPlayer

var input = Vector2.ZERO

# Movement speed of the character
var max_speed: float = 100.0

var friction = 600
const accel = 1500

# Called when the node enters the scene tree for the first time.
func _ready():
	play_idle_animation()
	pass # Replace with function body.
	
	
func play_idle_animation():
	animation_player.play("front_idle")
		

func get_input():
	input.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))
	input.y = int(Input.is_action_pressed("ui_down")) - int(Input.is_action_pressed("ui_up"))
	
	return input.normalized()

func play_walk_animation():
	if abs(input.x) > abs(input.y):
		if input.x > 0:
			animation_player.play("right_walk")
		else:
			animation_player.play("left_walk")
	else:
		if input.y > 0:
			animation_player.play("font_walk")
		else: 
			animation_player.play("back_walk")
func player_movement(delta):
	input = get_input()
	
	if input == Vector2.ZERO:
		if velocity.length() > (friction * delta):
			velocity -= velocity.normalized() * (friction * delta)
			
		else:
			velocity = Vector2.ZERO
			play_idle_animation()
	else:
		velocity += (input * accel * delta)
		velocity = velocity.limit_length(max_speed)
		play_walk_animation()
	
	move_and_slide()
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	player_movement(delta)
	pass
