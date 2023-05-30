extends Node2D

var inside : bool  = false
#onready var box := preload("res://Items/Box.tscn")
#func _ready() -> void:

func _ready() -> void:
	get_tree().change_scene("res://telas/tela_02.tscn")
	
	
