extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var exit_arrow_inside = false

var on_rock = false
var on_jazz = false
var on_funk = false
var on_pop = false
var on_dance = false
var on_mpb = false
var on_brds = false
var on_salsa = false
var on_rap = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func _process(delta:float) -> void:
	if Input.is_action_pressed("click") and exit_arrow_inside:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://pc_fase_2.tscn")
	if Input.is_action_pressed("click") and on_salsa:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://livros_scenes/salsa_book.tscn")
	if Input.is_action_pressed("click") and on_rock:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://livros_scenes/rock_book.tscn")
	if Input.is_action_pressed("click") and on_jazz:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://livros_scenes/jazz_book.tscn")
	if Input.is_action_pressed("click") and on_pop:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://livros_scenes/pop_book.tscn")
	if Input.is_action_pressed("click") and on_dance:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://livros_scenes/dance_book.tscn")
	if Input.is_action_pressed("click") and on_mpb:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://livros_scenes/mpb_book.tscn")
	if Input.is_action_pressed("click") and on_brds:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://livros_scenes/brds_book.tscn")
	if Input.is_action_pressed("click") and on_rap:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://livros_scenes/rap_book.tscn")
	if Input.is_action_pressed("click") and on_funk:
		Input.set_default_cursor_shape(Input.CURSOR_ARROW)
		get_tree().change_scene("res://livros_scenes/funk_book.tscn")
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass


func _on_exit_arrow_bookshelf_mouse_entered() -> void:
	exit_arrow_inside = true # Replace with function body.
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)


func _on_exit_arrow_bookshelf_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	exit_arrow_inside = false # Replace with function body.
	


func _on_rock_on_book_mouse_entered() -> void:
	on_rock = true # Replace with function body.
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)

func _on_rock_on_book_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	on_rock = false # Replace with function body.


func _on_jazz_on_book_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	on_jazz = true


func _on_jazz_on_book_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	on_jazz = false # Replace with function body.


func _on_funk_on_book_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	on_funk = true # Replace with function body.


func _on_funk_on_book_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	on_funk = false # Replace with function body.


func _on_salsa_on_book_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	on_salsa = true # Replace with function body.


func _on_salsa_on_book_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	on_salsa = false # Replace with function body.


func _on_pop_on_book_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	on_pop = false # Replace with function body.


func _on_pop_on_book_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	on_pop = true # Replace with function body.


func _on_dance_on_book_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	on_dance = true # Replace with function body.


func _on_dance_on_book_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	on_dance = false # Replace with function body.


func _on_mpb_on_book_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	on_mpb = true # Replace with function body.


func _on_mpb_on_book_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	on_mpb = false # Replace with function body.


func _on_brds_on_book_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	on_brds = true # Replace with function body.


func _on_brds_on_book_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	on_brds = false # Replace with function body.


func _on_rap_on_book_mouse_entered() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_POINTING_HAND)
	on_rap = true # Replace with function body.


func _on_rap_on_book_mouse_exited() -> void:
	Input.set_default_cursor_shape(Input.CURSOR_ARROW)
	on_rap = false # Replace with function body.
