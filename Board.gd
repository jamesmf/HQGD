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
	minSize = 96
	var yOffset = sqrt(3)/2.0 * minSize
	for i in range(0,boardSize):
		var row = []
		var rowOffset = 0
		if i  % 2 != 0:
			rowOffset = minSize/2.0
		for j in range(0,boardSize):
			row.append([rowOffset+xMargin+minSize*j,yMargin+yOffset*i])
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
	
	var hex2 = hexScene.instance()
	x = grid[0][1][0]
	y = grid[0][1][1]
	hex2._place(x, y, minSize)
	add_child(hex2)

	var hex3 = hexScene.instance()
	x = grid[1][1][0]
	y = grid[1][1][1]
	hex3._place(x, y, minSize)
	add_child(hex3)
	
	var hex4 = hexScene.instance()
	x = grid[2][2][0]
	y = grid[2][2][1]
	hex4._place(x, y, minSize)
	add_child(hex4)