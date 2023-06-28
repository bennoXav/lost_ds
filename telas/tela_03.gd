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
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://telas/tela_05.tscn")
	elif Input.is_action_pressed("click") and inside_pc:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://telas/tela_04.tscn")
		


func _on_Area2D_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	inside_pc = true

func _on_Area2D_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	inside_pc = false

func _on_Area2D2_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	inside_nx_r = true


func _on_Area2D2_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	inside_nx_r = false
