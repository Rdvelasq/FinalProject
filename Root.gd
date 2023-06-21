extends Node2D


var rock_scene = preload("res://Rock.tscn")
var score = 0;

@onready var player = get_node("Player")


func _on_timer_timeout():
	var rock = rock_scene.instantiate()
	#add signals and connect signals
	rock.collision_layer = 2  
	rock.collision_mask = 1 | 4  
	#what the type of signal you want to connect, Callable(nodeWhereSignalIsAt, name of the signal in that node)
	rock.connect("body_shape_entered", Callable(player, "_on_rock_body_shape_entered")) 
	add_child(rock)
	rock.position = Vector2(randf_range(1,899),-2)
func update_score():
	score+=1
	Label.text
	
	
