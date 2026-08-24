extends Node

var minigames_done = 0 #track how many minigames done
var lives = 3 #track how many lives left, also effecting garlic appearing


func reset_all_game_stats() -> void:
	lives = 3
	minigames_done = 0
