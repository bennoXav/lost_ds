extends Control

onready var inside_nx_r: bool = false
onready var inside_book: bool = false
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass

func _process(delta:float) -> void:
	if Input.is_action_pressed("click") and inside_nx_r:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://estante_room_fase_2.tscn")
	elif Input.is_action_pressed("click") and inside_book:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://bookshelf_inside_fase_2.tscn")
		

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass

func _on_previus_room_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	inside_nx_r = true

func _on_previus_room_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	inside_nx_r = false


func _on_bookshelf_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	inside_book = false

func _on_bookshelf_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	inside_book = true
