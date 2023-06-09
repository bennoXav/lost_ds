extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var exit_arrow = false
onready var canvas_input = get_node("CanvasLayer")
onready var lineEdit = get_node("CanvasLayer/LineEdit")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	 pass


func _process(delta:float) -> void:
	if Input.is_action_pressed("click") and exit_arrow:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		canvas_input.hide()
		get_tree().change_scene("res://estante_room_fase_2.tscn")
	
		


func _on_exit_pc_area2d_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
		
	exit_arrow = true # Replace with function body.


func _on_exit_pc_area2d_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	exit_arrow = false # Replace with function body.


func _on_TextureButton_pressed() -> void:
	print(lineEdit.text)
	if lineEdit.text == "4 8 15 16 23 42":
		$"/root/Music".stop_music()
		get_tree().change_scene("res://win_game.tscn")
	else:
		canvas_input.hide()
		$"/root/Music".stop_music()
		get_tree().change_scene("res://end_game.tscn")
