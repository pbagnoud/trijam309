extends Button

@onready var dice: Node2D = $".."

func _ready():
	visible = false  # Hide the button initially


func _input(event):
	
	if event is InputEventMouseMotion:
		# Get the position of the mouse relative to the die asset
		var mouse_pos = event.position
		
		# Check if the mouse is over the die (assuming the die is at position (0, 0))
		if dice.get_global_rect().has_point(mouse_pos):
			visible = true  # Show the button
			position = mouse_pos + Vector2(0, 20)  # Position it below the die
		else:
			visible = false  # Hide the button if not hovering

	elif event is InputEventMouseButton:
		if event.pressed and event.button_index == MOUSE_BUTTON_LEFT and visible:
			dice.reroll(dice.current_faces)  # Call your function when clicking on the button
