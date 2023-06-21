extends Label


# Called when the node enters the scene tree for the first time.
func updateText():
	self.text = str(Root.score)
