extends KinematicBody2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if Input.is_action_pressed("player1_up"):
		move_and_collide(Vector2(0,-300) * delta)
	
	if Input.is_action_pressed("player1_down"):
		move_and_collide(Vector2(0,300) * delta)
