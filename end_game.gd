extends Control

onready var audio = $explosion


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	if get_tree().current_scene.name == "end_game":
		yield(get_tree().create_timer(2.0), "timeout")
		audio.play()
	if Input.is_action_pressed("ui_select"):
		get_tree().change_scene("res://telas/tela_01.tscn")
