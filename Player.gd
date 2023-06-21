extends CharacterBody2D

@export var speed = 500

#pack a scence to be used 
@export var projectile: PackedScene
#load bullet image
const bulletPath = preload("res://Projectile.tscn")

func _physics_process(delta):
	movement()
	shoot()
	
func movement():
	var movement: Vector2 = Vector2.ZERO
	if Input.is_action_pressed("Left"):
		movement.x -= 1
	if Input.is_action_pressed("Right"):
		movement.x += 1
	if Input.is_action_pressed("Up"):
		movement.y -= 1
	if Input.is_action_pressed("Down"):
		movement.y += 1
	velocity = movement * speed
	move_and_slide()
	
func shoot():
	if Input.is_action_just_pressed("Shoot"):
		#create an instance of the bullet 
		var bullet = projectile.instantiate()
		#add a bullet to the scene 
		get_parent().add_child(bullet)
		#add the poisition of our MAarker2D to the bullet poisition
		bullet.global_position = $Marker2D.global_position




#Signal for when the rock enters our body lose 
func _on_rock_body_shape_entered(body_rid, body, body_shape_index, local_shape_index):
	print("collision")
	queue_free() # Replace with function body.


