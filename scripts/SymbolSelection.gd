extends HBoxContainer


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	for i in range(len(GlobalVars.mark_symbols)):
		var symbol_button = preload("res://Symbol Button.tscn").instance()
		symbol_button.get_child(0).symbol_index = i
		symbol_button.size_flags_horizontal = SIZE_EXPAND_FILL
		add_child(symbol_button)
	if GlobalVars.counters:
		for c in [-1, 1]:
			var inc_button = preload("res://Increment Button.tscn").instance()
			inc_button.get_child(0).change = c
			inc_button.size_flags_horizontal = SIZE_EXPAND_FILL
			add_child(inc_button)


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
