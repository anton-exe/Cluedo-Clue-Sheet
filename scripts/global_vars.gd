extends Node


# Declare member variables here. Examples:
var trash = null

var mark_symbols: Array = [
	" ",
	"+",
	"X",
	"-",
	"?"
]

var mark_nums = [
	"0", # 0
	"1", # 1
	"2", # 2
	"3", # 3
	"4", # 4
	"5", # 5
	"6", # 6
	"7", # 7
	"8", # 8
	"9"  # 9
]

var counters: bool = true

var game_vers: Dictionary = {}

var cur_game_ver: String = ""
var cur_game_data: Array = []
var player_count: int = 4

var cur_is_symbol: bool = true
var cur_symbol: int = 0


# Called when the node enters the scene tree for the first time.
#func _ready():
#	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
