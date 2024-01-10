extends CharacterBody2D
var inertia = Vector2()
var look_direction = Vector2.DOWN
var attack_direction = Vector2.DOWN
var animation_lock = 0
var damage_lock = 0.0
var charge_time = 2.5
var charge_start_time = 0.0

const SPEED = 200.0
const JUMP_VELOCITY = -400.0



func _physics_process(delta):
	
	
	if Input.is_action_just_pressed("Dash"):
		$AnimatedSprite2D.play('Dash')
	if Input.is_action_just_pressed("ui_left") or Input.is_action_just_pressed("ui_right"):
		$AnimatedSprite2D.play("move")
	if Input.is_action_just_pressed("ui_up") or Input.is_action_just_pressed("ui_down"):
		$AnimatedSprite2D.play("move")
	if Input.is_action_just_released("ui_left") or Input.is_action_just_released("ui_right"):
		$AnimatedSprite2D.play('idle')
	if Input.is_action_just_released("ui_up") or Input.is_action_just_released("ui_down"):
		$AnimatedSprite2D.play('idle')
		pass

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction = Vector2(
			Input.get_axis("ui_left", "ui_right"),
			Input.get_axis("ui_up", "ui_down")
		).normalized()
		
	if direction.length() > 0:
			look_direction = direction
			velocity = direction * SPEED
	else:
		velocity = velocity.move_toward(Vector2(), SPEED) #velocity smoothly goes to 0
	
	velocity += inertia
	move_and_slide()
	inertia = inertia.move_toward(Vector2(), delta * 1000.0)
	if direction.x != 0:
				$AnimatedSprite2D.flip_h = direction.x > 0
func Dash():
	if look_direction == 1:
		position.x += 10
	elif look_direction == 0:
		position.x -= 10
	
	pass 
	
