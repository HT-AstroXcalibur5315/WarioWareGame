extends Node2D
@onready var player: CharacterBody2D = $"../Player2" # grabs the parent node
@onready var self_area = $Area2D

signal ufos_shot


func _on_area_2d_area_entered(_area) -> void:
	if self.visible:
		emit_signal("ufos_shot") #signal broadcast
		self.hide()
