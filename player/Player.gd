extends CharacterBody2D

const SPEED := 200
const GRAVITY := 2000
const JUMP_SPEED := 550

func _process(delta:float) -> void:
	change_animation()

func change_animation():
	# face left of right
	if velocity.x > 0:
		$AnimatedSprite2D.flip_h = false
	elif velocity.x < 0:
		$AnimatedSprite2D.flip_h = true
	
	# changing of the animations itself
	if velocity.y < 0: # negative Y is up
		$AnimatedSprite2D.play("jumping")
	else:
		if velocity.x != 0:
			$AnimatedSprite2D.play("running")
		else:
			$AnimatedSprite2D.play("idle")

func _physics_process(delta:float) -> void:
	# reset horizontal velocity
	velocity.x = 0
	
	# set horizontal velocity
	if Input.is_action_pressed("move_right"):
		velocity.x += SPEED
	if Input.is_action_pressed("move_left"):
		velocity.x -= SPEED
	# jump will happen on the next frame
	if Input.is_action_just_pressed("jump"):
		if is_on_floor():
			velocity.y = -JUMP_SPEED # negative Y is up in Godot
		
	# apply gravity
	# player always has downwards velocity
	velocity.y += GRAVITY * delta
	
	# actually move the player
	move_and_slide()
