extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
var jack_whats = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
func _process(delta:float) -> void:
		if jack_whats and  Input.is_action_pressed("click"):
			get_tree().change_scene("res://fase_2.tscn")
		

func _on_jack_music_mouse_entered() -> void:
	jack_whats = true # Replace with function body.


func _on_jack_music_mouse_exited() -> void:
	jack_whats = false # Replace with function body.
