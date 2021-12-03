extends Node2D
onready var spritescene=preload("res://torre.tscn")
onready var spritescene1000=preload("res://Torremapa.tscn")
signal shot
onready var spritecena=preload("res://Shot.tscn")
# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var vida=100
var screen_size

# Called when the node enters the scene tree for the first time.
func _ready():

	screen_size = get_viewport_rect().size

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	get_node_and_resource(n)
	var s2=spritecena.instance()
	$CanvasLayer/Label.set_text(String(vida))
	pass
	
var pos=get_global_mouse_position()
func _on_Button_pressed():
	var s=spritescene.instance() 
	add_child(s)

var valor=0

func _on_Node2D_tree_exited():
	vida=vida-1
	pass # Replace with function body.

func _on_Node2D2_tree_exited():
	vida=vida-1
	pass # Replace with function body.

func _on_Node2D3_tree_exited():
	vida=vida-1
	pass # Replace with function body.

func _on_Node2D_tree_entered(s10):
	print("aaaaaaaaaaaaaa")
	pass # Replace with function body.


func _on_Node2D4_ready(s2):
	add_child(s2)	
	
