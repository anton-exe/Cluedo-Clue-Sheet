extends Button


# Declare member variables here. Examples:
var symbol: int = 0
var num: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	var text_str: String = GlobalVars.mark_symbols[symbol]
	if GlobalVars.counters:
		text_str += "|" + GlobalVars.mark_nums[num]
	text = text_str


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass


func _on_Button_pressed():
	if GlobalVars.cur_is_symbol:
		symbol = GlobalVars.cur_symbol
	else:
		if (num == 0 and GlobalVars.cur_symbol < 0) or (num == len(GlobalVars.mark_nums) and GlobalVars.cur_symbol > 0):
			return
		num += GlobalVars.cur_symbol
	var text_str: String = GlobalVars.mark_symbols[symbol]
	if GlobalVars.counters:
		text_str += "|" + GlobalVars.mark_nums[num]
	text = text_str
