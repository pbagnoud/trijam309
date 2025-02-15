extends Node2D

@export var id: int
var faces: Array = [1,1,1,1,1,1] # the faces of the dice
var current_faces: Array = [1,1,1,1,1,1] # the faces of the dices at the current time
var rng = RandomNumberGenerator.new() # Create a random number generator
signal result(value1, value2) # value1 = id, value2 = result of the function reroll
@onready var textBox_faces: RichTextLabel = $Sprite2D/RichTextLabel_faces
@onready var textBox_result: RichTextLabel = $Sprite2D/RichTextLabel_result


func _ready():
	visible = false  # Hide the button initially


func update_text_faces():
	textBox_faces.bbcode_text = str(current_faces)

func update_text_result(result_face):
	textBox_result.bbcode_text = str(result_face)


func reroll():
	var random_index = rng.randi_range(0, current_faces.size() - 1) # Generate a random index within the array bounds
	var selected_face = current_faces[random_index] # Retrieve the face at the random index
	
	print("Selected face: ", selected_face) # Print the selected face
	update_text_result(selected_face)
	
	result.emit(id, selected_face) # emit the signal result
	
	current_faces[random_index] = 0 # change the face of the dice
	update_text_faces()


func refresh():
	current_faces = faces # re-initialize the faces of the dices
	update_text_faces()
	update_text_result(" ")


func start_dice(current_id, valeurs):
	if current_id == id:
		faces = valeurs
		visible = true
		update_text_faces()
		update_text_result(" ")
