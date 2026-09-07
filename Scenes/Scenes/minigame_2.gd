extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer


var buttons_pressed := 0
var timer_end = false

func _ready() -> void:
	await themed_timer.Timer(3.0)
	#after this is completed...
	timer_end = true 


func _process(_delta: float) -> void:
	if buttons_pressed == 5:
		if Global.minigames_done > 2: # we access a global script and see how many minigames have been compeleted
			get_tree().change_scene_to_file("res://Scenes/Scenes/done_screen.tscn") # change current play scene into another, but you make your own finish screen in a later challenge, dont worry abt this rn
		else:
			get_tree().change_scene_to_file("res://Scenes/Scenes/timer_screen.tscn") # go back to the intermission scene
		
	
	if timer_end:
		Global.lives -= 1
		Global.minigames_done -= 1
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/Scenes/timer_screen.tscn") # back to intermission
		

func _on_button_1_pressed() -> void:
	$Button_1.hide()
	buttons_pressed = buttons_pressed +1


func _on_button_2_pressed() -> void:
	$Button_2.hide()
	buttons_pressed = buttons_pressed +1


func _on_button_3_pressed() -> void:
	$Button_3.hide()
	buttons_pressed = buttons_pressed +1


func _on_button_4_pressed() -> void:
	$Button_4.hide()
	buttons_pressed = buttons_pressed +1


func _on_button_5_pressed() -> void:
	$Button_5.hide()
	buttons_pressed = buttons_pressed +1
