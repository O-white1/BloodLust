extends Node2D
var music = preload("res://Assets/audio/Stage 1 Theme_.mp3")
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
	

	# $AudioStreamPlayer2D.play("music")

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass
