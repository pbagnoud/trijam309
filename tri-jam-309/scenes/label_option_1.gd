extends RichTextLabel

@onready var parent = get_parent()

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	print(parent.option3)
	var label = parent.option3
	text = str(label)

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
