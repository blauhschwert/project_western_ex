class_name Main
extends Node2D

var CROSSHAIR_TEXTURE = load("res://assets/western/crosshair.png")

var mouse_pos = null
var game_score : int = 0

@onready var label: Label = $CanvasLayer/Score/Label


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Input.set_custom_mouse_cursor(CROSSHAIR_TEXTURE)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	mouse_pos = get_global_mouse_position()
	#print(mouse_pos)
	update_game_score()

func update_game_score():
	label.text = "Score : " + str(game_score).pad_zeros(6)
