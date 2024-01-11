extends CharacterBody2D


const SPEED = 120
var MaxHp = 100
var Hp = 100
var AtkDmg = 15
var BumpDmg = 10
var SelfKnockBack = 10


enum STATES { IDLE=0, UP, DOWN, LEFT, RIGHT,
			  UP_L, UP_R, DOWN_L, DOWN_R, DAMAGED }

var state_directions = [
	Vector2.ZERO,
	Vector2.UP,
	Vector2.DOWN,
	Vector2.LEFT,
	Vector2.RIGHT,
	Vector2(-1, -1).normalized(),  # UL
	Vector2(1, -1).normalized(),   # UR
	Vector2(-1, 1).normalized(),   # DL
	Vector2(1, 1).normalized(),    # DR
	Vector2.ZERO ]
	
@onready var raycastR = $RayCast2DR
@onready var raycastM = $RayCast2DM
@onready var raycastL = $RayCast2DL

	
func _physics_process(delta):


	move_and_slide()
