extends CharacterBody2D


const SPEED = 200.0
const JUMP_VELOCITY = -400.0



func _physics_process(delta):


	# Handle Jump.
	if Input.is_action_just_pressed("Dash") and is_on_floor():
		$AnimatedSprite2D.play('Dash')

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()
