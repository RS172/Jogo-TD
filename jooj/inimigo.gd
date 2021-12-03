extends KinematicBody2D
export var speed=64
export var health=1
var life=100
var screen_size
var velocity=Vector2.ZERO
var move_direction=1
func _physics_process(_delta):
	screen_size = get_viewport_rect().size
	velocity.x=speed*move_direction
	velocity=move_and_slide(velocity)
	if position.x>=1050:
		queue_free()
	if position.x>=172 and position.x<=180:
		velocity.y=-speed*move_direction
		velocity.x=0
	if position.x>=373 and position.x<=381:
		velocity.y=speed*move_direction
		velocity.x=0
	if position.y>=386 and position.x>651:
		velocity.y=-speed*move_direction
		velocity.x=0
	if velocity.y==-speed*move_direction:
		$AnimatedSprite.play('default')
	elif velocity.y==speed*move_direction:
		$AnimatedSprite.play('desce')
	else:
		$AnimatedSprite.play('NewAnim')
# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
