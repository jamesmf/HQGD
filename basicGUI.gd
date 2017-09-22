extends TextureFrame

var tapped=false

#func blah(origin, r):
#	var myArray = Vector2Array()
#	for i in range(0,6):
#		var vec = origin + Vector2(r * cos(2 * PI * i / 6), r * sin(2 * PI * i / 6))
#		myArray.append(vec)
#	return myArray
	
	
func _draw():
#	var array = blah(Vector2(50,50),20)
#	var color = Color(1, 0, 0)
	#draw_colored_polygon(array, color)
    #var r = Rect2( Vector2(), get_size() )
	if (tapped):
#		color = Color(1, 0, 0)
#		draw_colored_polygon(array, color)
		var newPos = Vector2(randf(), randf())
		print(newPos)
		set_pos(newPos)
		update()
		tapped = false
#	else:
#		color = Color(0, 1, 0)
		#draw_colored_polygon(array, color)


func _input_event(ev):
	if (ev.type==InputEvent.MOUSE_BUTTON and ev.pressed):
		print("hello!")
		tapped = not tapped
		update()
