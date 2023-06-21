extends Area2D


@export var speed = 7
var score = 0


func _physics_process(delta):
	movement()
	
func movement():
	position.y += speed

# projectile entering rock 
func _on_area_entered(area):
	Root.score += 1
	print(Root.score)
	#update score 
	get_parent().get_node("Label").updateText()
	queue_free()
