extends Node2D


func _on_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/Scenes/title_scene.tscn")
	Global.reset_all_game_stats()


func _on_quit_pressed() -> void:
	get_tree().quit()
