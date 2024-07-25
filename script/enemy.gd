extends CharacterBody2D


const SPEED = 800
var direction := -1
# Get the gravity from the project settings to be synced with RigidBody nodes.
var gravity = 0


func _physics_process(delta):
	# Add the gravity.
	if not is_on_floor():
		velocity.y += gravity * delta

		velocity.x = direction * SPEED * delta


	move_and_slide()
