extends Node2D

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	Score.connect("healthChanged", self, "update_bar")
	get_node("score").connect("node_ready", self, "_node_ready")

func _on_score_total_score(nouveau_score: Variant) -> void:
	score = _on_score_total_score()
	
# Called every frame. 'delta' is the elapsed time since the previous frame.
func _update_bar(current_score) -> void:
	TextureBarScore.value =Score.score
