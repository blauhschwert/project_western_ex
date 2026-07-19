class_name OptionMenu
extends VBoxContainer

@export var item_slots : HBoxContainer

var UpgradeSlot = preload("res://scenes/upgrades/upgrade_slot.tscn")

var curr_upgrade = null

func _input(event: InputEvent) -> void:
	if Input.is_action_just_pressed("test"):
		show_option()


func _ready() -> void:
	hide()

func close_option():
	remove_child(curr_upgrade)
	get_tree().paused = false

func show_option():
	var option_slot = UpgradeSlot.instantiate()
	curr_upgrade = option_slot
	add_child(option_slot)
	
	show()
	#get_tree().paused = true
