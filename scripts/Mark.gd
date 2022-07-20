extends Button


# Declare member variables here. Examples:
var symbol: int = 0
var num: int = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	text = GlobalVars.mark_symbols[symbol] + "|" + GlobalVars.mark_nums[num]


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
	text = GlobalVars.mark_symbols[symbol] + "|" + GlobalVars.mark_nums[num]
