extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

onready var inside_pc_fase_2: bool = false
onready var inside_arrow_nx_r: bool = false
onready var canvas_input = get_node("pc_inside_fase_2/CanvasLayer")
onready var lineEdit = get_node("pc_inside_fase_2/CanvasLayer/LineEdit")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	canvas_input.hide() # Replace with function body.

func _process(delta:float) -> void:
	if Input.is_action_pressed("click") and inside_pc_fase_2:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		canvas_input.show()
		get_tree().change_scene("res://pc_inside_fase_2.tscn")
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	elif Input.is_action_pressed("click") and inside_arrow_nx_r:
		get_tree().change_scene("res://pc_fase_2.tscn")
		
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_pc_fase_2_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	inside_pc_fase_2 = true # Replace with function body.


func _on_pc_fase_2_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	inside_pc_fase_2 = false# Replace with function body.


func _on_bookshelf_room_arrow_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	inside_arrow_nx_r= true # Replace with function body.


func _on_bookshelf_room_arrow_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	inside_arrow_nx_r= false # Replace with function body.
