extends Control


# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"
onready var inside_back_2: bool = false

# Called when the node enters the scene tree for the first time.

func _ready() -> void:
	pass # Replace with function body.


func _process(delta:float) -> void:
		if inside_back_2 and Input.is_action_pressed("click")  :
			$"/root/Music".play_music()
			get_tree().change_scene("res://jack_whats_music.tscn")



func _on_jack_gun_back_2_area_2d_mouse_entered() -> void:
	inside_back_2 = true

func _on_jack_gun_back_2_area_2d_mouse_exited() -> void:
	inside_back_2 = false
