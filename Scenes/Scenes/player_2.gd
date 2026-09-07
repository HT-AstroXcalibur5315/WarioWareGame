extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -500.0


func _physics_process(delta: float) -> void:
	# Add the gravity.
	if not is_on_floor():
		velocity += get_gravity() * delta


	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


var bullet_scene = load("res://Scenes/Scenes/bullet.tscn")

var can_shoot: bool = true

@onready var muzzle: Node2D = $Sprite2D/Muzzle

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("ui_accept") and can_shoot:
		shoot()


func shoot() -> void:
	can_shoot = false
	
	var new_bullet = bullet_scene.instantiate()
	get_tree().current_scene.add_child(new_bullet)
	new_bullet.global_position = muzzle.global_position
	
	await get_tree().create_timer(0.5).timeout
	can_shoot = true
