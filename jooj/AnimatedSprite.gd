extends AnimatedSprite
# Called when the node enters the scene tree for the first time.
func _ready():
	pass
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	var pos_final=get_global_mouse_position()
	if pos_final.y<=356.193 and pos_final.y>=255 and pos_final.x<=240:
		$".".play('New Anim')
		pass
	elif pos_final.y>=85 and pos_final.x>=107 and pos_final.x<=240 and pos_final.y<=355:
		$".".play('New Anim')
		pass
	elif pos_final.y>=85 and pos_final.x>=107 and pos_final.x<=435 and pos_final.y<=185:
		$".".play('New Anim')
		pass
	elif pos_final.y>=85 and pos_final.x>=315 and pos_final.x<=435 and pos_final.y<=415:#esse
		$".".play('New Anim')
		pass
	elif pos_final.y>=323 and pos_final.x>=315 and pos_final.x<=710 and pos_final.y<=420:
		$".".play('New Anim')
		pass
	elif pos_final.y>=200 and pos_final.x>=580 and pos_final.x<=710 and pos_final.y<=420:
		$".".play('New Anim')
		pass
	elif pos_final.y>=200 and pos_final.x>=580 and pos_final.x<=1080 and pos_final.y<=305:
		$".".play('New Anim')
		pass
	elif valor>=1:
		$".".play("New Anim") 
		pass
	else:	
		$".".play('default')
		pass
var valor=0
func _on_Area2D_area_shape_entered(_area_id, _area, _area_shape, _local_shape):
	valor=1
	pass # Replace with function body.
func _on_Area2D_area_shape_exited(_body_id, _area, _body_shape, _local_shape):
	valor=0
	$".".play('default')
	pass # Replace with function body.

