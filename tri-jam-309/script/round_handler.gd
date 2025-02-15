extends Node
signal phase_marchant
signal phase_de
signal dice_init(id,faces)

@export var marchant: Node
@export var number_of_round = 5
@export  var current_round = 1:
	set(value):
		current_round = value
		if current_round >= number_of_round:
			endgame()
		else:
			new_round(value)

func new_round(value):
	print('new round')
	emit_signal("phase_de")
	
func endgame():
	print('end game')

func fin_phase_lancer(score):
	print(score)
	emit_signal("phase_marchant")
	
	
func fin_phase_marchant(array_dice):
	print(array_dice)
	current_round = current_round + 1
	emit_signal('dice_init',current_round + 1,array_dice)
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	emit_signal("phase_de")
	emit_signal('dice_init',1,[1,2,3,4,5,6])
	emit_signal('dice_init',2,[1,2,3,4,5,6])
