extends Node2D
# Called when the node enters the scene tree for the first time.
func _ready():
	$FirePillar1/AnimatedSprite2D.play("default")
	$FirePillar2/AnimatedSprite2D.play("default")
	$FirePillar3/AnimatedSprite2D.play("default")
	$FirePillar4/AnimatedSprite2D.play("default")
	$FirePillar1/AnimatedSprite2D2.play("default")
	$FirePillar2/AnimatedSprite2D2.play("default")
	$FirePillar3/AnimatedSprite2D2.play("default")
	$FirePillar4/AnimatedSprite2D2.play("default")
	$FirePillar1/AnimatedSprite2D3.play("default")
	$FirePillar2/AnimatedSprite2D3.play("default")
	$FirePillar3/AnimatedSprite2D3.play("default")
	$FirePillar4/AnimatedSprite2D3.play("default")


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
