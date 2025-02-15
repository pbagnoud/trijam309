extends Node2D

@export var score: Node

@onready var texture_barre_score: ProgressBar = $TextureBarreScore

func _on_total_score(nouveau_score) -> void:
	texture_barre_score.value =score.total_score


	
