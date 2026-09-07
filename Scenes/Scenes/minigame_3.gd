extends Node2D
@onready var themed_timer: Node2D = $ThemedTimer 

var ufos_shot = 0
var timer_end = false

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	await themed_timer.Timer(5.0)
	timer_end = true


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta: float) -> void:
	if ufos_shot == 7:
		if Global.minigames_done > 2: # we access a global script and see how many minigames have been compeleted
			get_tree().change_scene_to_file("res://Scenes/Scenes/done_screen.tscn") # change current play scene into another, but you make your own finish screen in a later challenge, dont worry abt this rn
		else:
			get_tree().change_scene_to_file("res://Scenes/Scenes/timer_screen.tscn") # go back to the intermission scene

	if timer_end: # if the timer does end...
		Global.minigames_done -=1 #go back a minigame
		Global.lives -= 1 # lose ur lives
		if Global.lives < 1:
			get_tree().change_scene_to_file("res://Scenes/Scenes/death_screen.tscn")
		else:
			get_tree().change_scene_to_file("res://Scenes/Scenes/timer_screen.tscn") # back to intermission




func _on_ufo_1_ufos_shot() -> void:
	$UFO1.hide()
	ufos_shot = ufos_shot +1
	

func _on_ufo_2_ufos_shot() -> void:
	$UFO2.hide()
	ufos_shot = ufos_shot +1


func _on_ufo_3_ufos_shot() -> void:
	$UFO3.hide()
	ufos_shot = ufos_shot +1


func _on_ufo_4_ufos_shot() -> void:
	$UFO4.hide()
	ufos_shot = ufos_shot +1


func _on_ufo_5_ufos_shot() -> void:
	$UFO5.hide()
	ufos_shot = ufos_shot +1


func _on_ufo_6_ufos_shot() -> void:
	$UFO6.hide()
	ufos_shot = ufos_shot +1


func _on_ufo_7_ufos_shot() -> void:
	$UFO7.hide()
	ufos_shot = ufos_shot +1


func _on_ufo_8_ufos_shot() -> void:
	$UFO8.hide()
	ufos_shot = ufos_shot +1


func _on_ufo_9_ufos_shot() -> void:
	$UFO9.hide()
	ufos_shot = ufos_shot +1


func _on_ufo_10_ufos_shot() -> void:
	$UFO10.hide()
	ufos_shot = ufos_shot +1


func _on_ufo_11_ufos_shot() -> void:
	$UFO11.hide()
	ufos_shot = ufos_shot +1
