extends Container

var boardSize = 10
var xMargin = 20
var yMargin = 20
var grid = []
var minSize
var hexConvert = 2/sqrt(3)

func populateGrid():
	var sizes = get_size()
	print(sizes)
	#minSize = min(sizes[0]-2*xMargin, sizes[1]-2*yMargin)/boardSize
	minSize = 128
	for i in range(0,boardSize):
		var row = []
		for j in range(0,boardSize):
			row.append([xMargin+hexConvert*minSize*i,yMargin+hexConvert*minSize*j])
		grid.append(row)


func _ready():
	# Called every time the node is added to the scene.
	populateGrid()
	print(minSize)
	var hexScene = preload("res://Hex1.tscn")
	var hex = hexScene.instance()
	print(grid[0][0],grid[1][0],grid[1][1])
	var x = grid[0][0][0]
	var y = grid[0][0][1]
	hex._place(x, y, minSize)
	add_child(hex)
