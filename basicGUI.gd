extends TextureFrame

var placed = false
	
func _draw():
	if placed:
		update()


func _place(i, j, size):
	set_pos(Vector2(i,j))
	set_size(Vector2(size, size))
	print(get_size())
	placed = true


func _input_event(ev):
	if (ev.type==InputEvent.MOUSE_BUTTON and ev.pressed):
		print("hello!")
		update()
