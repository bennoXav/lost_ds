extends Control
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

onready var inside_pc_dialog : bool= false
# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta:float) -> void:
	if inside_pc_dialog and Input.is_action_pressed("click") :
		get_tree().change_scene("res://jack_gun_front.tscn")

func _on_pc_dialog_area2d_mouse_entered() -> void:
	inside_pc_dialog = true


func _on_pc_dialog_area2d_mouse_exited() -> void:
	inside_pc_dialog = false
