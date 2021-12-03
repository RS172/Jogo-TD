extends Node2D
onready var spritescene2=preload("res://Torremapa.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
export var speed=64
export var health=1
var velocity=Vector2.ZERO
var move_direction=1
# Called when the node enters the scene tree for the first time.
func _ready():
	set_process(true)
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	velocity=get_global_mouse_position()

var pos=get_global_mouse_position()
func _on_Button_pressed():
	var pos_final=get_global_mouse_position()
	if pos_final.y<=356.193 and pos_final.y>=255 and pos_final.x<=240:
		pass
	elif pos_final.y>=85 and pos_final.x>=107 and pos_final.x<=240 and pos_final.y<=355:
		pass
	elif pos_final.y>=85 and pos_final.x>=315 and pos_final.x<=435 and pos_final.y<=415:#esse
		pass
	elif pos_final.y>=323 and pos_final.x>=315 and pos_final.x<=710 and pos_final.y<=420:
		pass
	elif pos_final.y>=200 and pos_final.x>=580 and pos_final.x<=710 and pos_final.y<=420:
		pass
	elif pos_final.y>=200 and pos_final.x>=580 and pos_final.x<=1080 and pos_final.y<=305:
		pass
	elif valor>=1:
		pass
	else:
		var s2=spritescene2.instance()
		add_child(s2)
		s2.position=pos_final
		$KinematicBody2D.queue_free()

var valor=0


func _on_Area2D_area_shape_entered(_area_id, _area, _area_shape, _local_shape):
	valor=1
	#$KinematicBody2D/Button/AnimatedSprite.play("NewAnim")
	pass
#func _on_Area2D_area_exited(area):
#	valor=0
#	$KinematicBody2D/Button/AnimatedSprite.play("defaut")
#	print('oi')
#	pass # Replace with function body.
func _on_Area2D_area_shape_exited(_area_id, _area, _area_shape, _local_shape):
	valor=0
	#$KinematicBody2D/Button/AnimatedSprite.play("defaut")
	#print("2")
	pass # Replace with function body.
#func _on_Area2D_mouse_exited():
#	valor=0
#	print("111111")
#	pass # Replace with function body.
