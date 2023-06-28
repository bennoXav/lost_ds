extends Control

onready var inside: bool = false
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(delta:float) -> void:
	if Input.is_action_pressed("click") and inside:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://telas/tela_03.tscn")


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_Area2D_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	inside = true


func _on_Area2D_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	inside = false
