extends Node2D

@export var score: Node

@onready var texture_barre_score: TextureProgressBar = $TextureBarreScore

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	score.connect("total_score", score._on_total_score())

func _on_score_total_score(nouveau_score) -> void:
	score = score.total_score
	texture_barre_score.value =score.total_score
	
	
