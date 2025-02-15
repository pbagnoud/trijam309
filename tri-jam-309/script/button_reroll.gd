extends Button

@onready var dice: Node2D = $".."

func _ready():
	visible = false  # Hide the button initially


func _input(event):
	
	if event is InputEventMouseMotion:
		# Get the position of the mouse relative to the die asset
		var mouse_pos = event.position
		# Get the global position and size of the dice
		var dice_global_position = dice.global_position
		var dice_size = dice.get_node("Sprite2D").texture.get_size() 
		
		# Create a rectangle representing the dice bounds
		var dice_rect = Rect2(dice_global_position - (dice_size / 2), dice_size)  # Centering around global position
		
		if dice_rect.has_point(mouse_pos):
			visible = true
			position = mouse_pos + Vector2(0, 20)
		else:
			visible = false
		
	elif event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT and visible:
			dice.reroll(dice.current_faces)  # Call your function when clicking on the button
