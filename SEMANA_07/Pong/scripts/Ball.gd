extends KinematicBody2D

var vx = -400
var vy = 400
var startx
var starty
# Called when the node enters the scene tree for the first time.
func _ready():
	startx = position.x
	starty = position.y


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	var colision = move_and_collide(Vector2(vx,vy) * delta)

	if colision != null:
		if colision.collider.name == "topwall":
			vy = -vy
		if colision.collider.name == "bottomwall":
			vy = -vy
		if colision.collider.name == "Player1":
			vx = -vx
		if colision.collider.name == "Player2":
			vx = -vx
		if colision.collider.name == "leftwall":
			position.x = startx
			position.y = starty
		if colision.collider.name == "rightwall":
			position.x = startx
			position.y = starty
