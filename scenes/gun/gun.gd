class_name Gun
extends Node2D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("press"):
		shoot()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	pass

func shoot() -> void:
	animation_player.play("shoot")
