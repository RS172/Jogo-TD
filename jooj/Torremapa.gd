extends Node2D
onready var spritecena=preload("res://Shot.tscn")

# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():

	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass

var valor=0
func _on_Area2D_mouse_entered():
	pass
	#valor=valor+1
	#if valor==2:
	#	pass
	#else:
	#	print(valor)
	pass # Replace with function body.


var num =0


func _on_oi_body_shape_entered(body_id, _body, _body_shape, _local_shape):
	num=num+1
	if num >4:
		print("bola", body_id)
		
		_ready()
		#print(body.position)



		


	pass # Replace with function body.
