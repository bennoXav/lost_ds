extends Control

# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
onready var inside_front : bool= false
func _ready() -> void:
	pass # Replace with function body.

# Called when the node enters the scene tree for the first time.
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta:float) -> void:
		if inside_front and Input.is_action_pressed("click"):
			get_tree().change_scene("res://jack_gun_back.tscn")
		return

func _on_jack_front_area2d_mouse_entered() -> void:
	inside_front = true


func _on_jack_front_area2d_mouse_exited() -> void:
	inside_front = false
