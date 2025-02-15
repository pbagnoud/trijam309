extends Node2D

signal achat

var options_des = [[1,2,3,4,5,6], [1,1,1,2,2,2]]

var option1 = [1,2,3,4,5,6]
var option2 = [1,2,3,4,5,6]
var option3 = [1,2,3,4,5,6]


var rng = RandomNumberGenerator.new()
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var rand_option1 = rng.randi_range(0, len(options_des)-1)
	var rand_option2 = rng.randi_range(0, len(options_des)-1)
	var rand_option3 = rng.randi_range(0, len(options_des)-1)
	option1 = options_des[rand_option1]
	option2 = options_des[rand_option2]
	option3 = options_des[rand_option3]
	get_node("Label_Option1").label()
	get_node("Label_Option2").label()
	get_node("Label_Option3").label()
	


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass


func _on_option_1_pressed() -> void:
	print("acheté option1 :", option1 )
	# Emettre le signal "achat" en transmettant aussi le contenu du dé acheté
	visible = false


func _on_option_2_pressed() -> void:
	print("acheté option2 :", option2 )
	# Emettre le signal "achat" en transmettant aussi le contenu du dé acheté
	visible = false


func _on_option_3_pressed() -> void:
	print("acheté option3 :", option3)
	# Emettre le signal "achat" en transmettant aussi le contenu du dé acheté
	visible = false
