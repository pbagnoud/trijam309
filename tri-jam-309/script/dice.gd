extends Node2D

var id: int
var faces: Array[int] = [1,2,3,4,5,6] # the faces of the dice
var current_faces: Array[int] = [1,2,3,4,5,6] # the faces of the dices at the current time
var rng = RandomNumberGenerator.new() # Create a random number generator

	
func reroll(current_faces):
	var random_index = rng.randi_range(0, current_faces.size() - 1) # Generate a random index within the array bounds
	var selected_face = current_faces[random_index] # Retrieve the face at the random index

	print("Selected face: ", selected_face) # Print the selected face
