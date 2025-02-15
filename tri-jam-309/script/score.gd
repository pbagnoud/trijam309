extends Node
signal total_score(nouveau_score)
@export var round_handler: Node
var dice_value = []

func create_array(size: int):
	for i in range(size):
		dice_value.append(1)
		
func product_of_array(array):
	var product = 1
	for element in array:
		product *= element
	return product
	
	

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	create_array(round_handler.number_of_round + 2)


func _on_result(value1: Variant, value2: Variant) -> void:
	dice_value[value1]=value2
	emit_signal('total_score',product_of_array(value2))
func _on_total_score(nouveau_score):
	pass
