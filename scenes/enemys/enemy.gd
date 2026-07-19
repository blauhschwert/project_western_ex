extends Sprite2D

signal emit_points(points : int)

var health = 3

func _input(event: InputEvent) -> void:
	if event.is_action_pressed("press"):
		if is_pixel_opaque(get_local_mouse_position()):
			take_damage(1)

func take_damage(amount : int) -> void:
	health -= amount
	
	if health <= 0:
		die()
	
func die():
	emit_points.emit(49)
	queue_free()
