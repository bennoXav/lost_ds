extends AudioStreamPlayer



# Declare member variables here. Examples:
# var a: int = 2
# var b: String = "text"

var background_music = load("res://background_music/background.mp3")
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
#	pass
func play_bg_music(): 
	$Music.stream = background_music
	$Music.play
