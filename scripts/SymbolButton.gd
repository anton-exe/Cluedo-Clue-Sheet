extends Button


# Declare member variables here. Examples:
var symbol_text: String = ""
var symbol_index: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	symbol_text = GlobalVars.mark_symbols[symbol_index]
	text = symbol_text


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	GlobalVars.cur_is_symbol = true
	GlobalVars.cur_symbol = symbol_index
