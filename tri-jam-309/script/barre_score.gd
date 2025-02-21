extends Node2D



@onready var texture_barre_score: ProgressBar = $TextureBarreScore

@export var score= 0

func _on_score_total_score(nouveau_score) -> void:
	score = nouveau_score
	print('score:')
	print(nouveau_score)
	get_child(0).value=score


	
