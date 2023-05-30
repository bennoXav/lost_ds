extends Control

onready var inside_pc: bool = false
onready var inside_nx_r: bool = false
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _process(delta:float) -> void:
	if Input.is_action_pressed("click") and inside_nx_r:
		get_tree().change_scene("res://telas/tela_05.tscn")
	elif Input.is_action_pressed("click") and inside_pc:
		get_tree().change_scene("res://telas/tela_04.tscn")
		


func _on_Area2D_mouse_entered() -> void:
	inside_pc = true

func _on_Area2D_mouse_exited() -> void:
	inside_pc = false

func _on_Area2D2_mouse_entered() -> void:
	inside_nx_r = true


func _on_Area2D2_mouse_exited() -> void:
	inside_nx_r = false
