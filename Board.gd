extends Container

# class member variables go here, for example:
# var a = 2
# var b = "textvar"

func _ready():
	# Called every time the node is added to the scene.
	var hexScene = preload("res://Hex1.tscn")
	var hex = hexScene.instance()
	add_child(hex)
