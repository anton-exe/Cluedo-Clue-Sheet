extends Control


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	var game_vers = File.new()
	game_vers.open("res://cluevers.json", File.READ)
	var parsed: Dictionary = JSON.parse(game_vers.get_as_text()).result
	for i in parsed.keys():
		$OptionButton.add_item(i)
	GlobalVars.game_vers = parsed


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	$Label.text = "Players: " + str($HSlider.value)


func _on_Button_pressed():
	GlobalVars.cur_game_ver = $OptionButton.get_item_text($OptionButton.get_selected_id())
	GlobalVars.cur_game_data = GlobalVars.game_vers[GlobalVars.cur_game_ver]
	GlobalVars.player_count = $HSlider.value
	GlobalVars.counters = $CountersCheckBox.pressed
	GlobalVars.trash = get_tree().change_scene("res://Notepad.tscn")
