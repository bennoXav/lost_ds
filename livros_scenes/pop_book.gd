extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

var on_arrow_pop = false
# Called when the node enters the scene tree for the first time.

func _process(delta:float) -> void:
	if Input.is_action_pressed("click") and on_arrow_pop:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://bookshelf_inside_fase_2.tscn")

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_pop_arrow_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	on_arrow_pop = true # Replace with function body.


func _on_pop_arrow_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	on_arrow_pop  = false# Replace with function body.
