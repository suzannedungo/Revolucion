extends Control
@onready var confirmation_window: Panel = $confirmation_window


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	confirmation_window.visible = false


#============================Saved files============================
func _on_save_1_pressed() -> void:
	pass # Replace with function body.


func _on_save_2_pressed() -> void:
	pass # Replace with function body.


func _on_save_3_pressed() -> void:
	pass # Replace with function body.

#============================Clear save============================
func _on_clear_1_pressed() -> void:
	confirmation_window.visible = true
	MusicManager.play_clearsfx()

func _on_clear_2_pressed() -> void:
	confirmation_window.visible = true
	MusicManager.play_clearsfx()

func _on_clear_3_pressed() -> void:
	confirmation_window.visible = true
	MusicManager.play_clearsfx()

#============================Back button============================
func _on_backbtn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main-menu.tscn")
	MusicManager.play_backsfx()

#============================Clear window============================
func _nobtn_pressed() -> void:
	confirmation_window.visible = false
	MusicManager.play_backsfx()

func _yesbtn_pressed() -> void:
	pass # Replace with function body.
