extends Node2D

@export var score= 0

@onready var texture_barre_score: ProgressBar = $TextureBarreScore



func _on_score_total_score(nouveau_score) -> void:
	score = nouveau_score
	print('score:')
	print(nouveau_score)
	#texture_barre_score.value =score


	
