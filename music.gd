extends Node

var bc_music_load = load("res://background_music/background.mp3")
# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

func play_music():
	$bc_music.stream = bc_music_load
	$bc_music.play()
func stop_music():
	$bc_music.stop()
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
