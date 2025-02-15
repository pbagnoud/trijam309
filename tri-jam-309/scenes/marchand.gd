extends Node2D

signal achat

@onready var options_des = []

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_option_1_pressed() -> void:
	print("option1")


func _on_option_2_pressed() -> void:
	print("option2")


func _on_option_3_pressed() -> void:
	print("option3")
