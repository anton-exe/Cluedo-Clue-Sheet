extends GridContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	columns = GlobalVars.player_count + 2
	for i in range(GlobalVars.player_count):
		var player_name_slot = LineEdit.new()
		player_name_slot.text = str(i+1)
		add_child(player_name_slot)
	var envelope_label = Label.new()
	envelope_label.text = "Ans"
	add_child(envelope_label)
	for n in get_children():
		n.size_flags_horizontal = SIZE_EXPAND_FILL
		n.size_flags_vertical = SIZE_EXPAND_FILL
	for category in GlobalVars.cur_game_data:
		for _i in range(GlobalVars.player_count + 2):
			var seperator = HSeparator.new()
			add_child(seperator)
		for clue in category:
			var clue_name = Label.new()
			clue_name.text = clue
			add_child(clue_name)
			for _i in range(GlobalVars.player_count + 1):
				var clue_slot = preload("res://Clue Slot.tscn").instance()
				add_child(clue_slot)


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	if GlobalVars.cur_is_symbol:
		$Curr_symbol.text = "Symbol: " + GlobalVars.mark_symbols[GlobalVars.cur_symbol]
	else:
		$Curr_symbol.text = "Change: " + str(GlobalVars.cur_symbol)
