extends Button


# Declare member variables here. Examples:
var change: int


# Called when the node enters the scene tree for the first time.
func _ready():
	if change < 0:
		text = str(change)
	else:
		text = "+" + str(change)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	GlobalVars.cur_is_symbol = false
	GlobalVars.cur_symbol = change
