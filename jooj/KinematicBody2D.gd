extends KinematicBody2D
signal hit # Is used to detect if player is hit by projectile
export var speed = 100000000000000000  # How fast the player will move (pixels/sec).
var screen_size 
func _ready():
	screen_size = get_viewport_rect().size

var velocity = Vector2.ZERO
func _move_to_mouse(_delta):
	var direction = get_global_mouse_position() - position
	position.x += 0
	position.y += 0
	move_and_collide(direction)

func _process(delta):
	#print(position)
	position += velocity*delta
	position.x = clamp(position.x, 0, screen_size.x)
	position.y = clamp(position.y, 0, screen_size.y)
	_move_to_mouse(delta)
