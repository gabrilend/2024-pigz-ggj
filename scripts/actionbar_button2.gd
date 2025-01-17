extends Control

signal actionbar_button_pressed2(action_type: String)
@export var actionbar_button: Control

func _ready():
	actionbar_button.actionbar_button_pressed.connect(on_actionbar_button_pressed)

func on_actionbar_button_pressed(action_type: String):
	actionbar_button_pressed2.emit(action_type) # remarkable
