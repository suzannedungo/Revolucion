extends Control
@onready var menu_btn: VBoxContainer = $"menu_btn"
@onready var options_window: Panel = $"options_window"


func _ready() -> void:
	menu_btn.visible = true
	options_window.visible = false


#============================Menu_btn============================
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/select-profile.tscn")
	MusicManager.play_entersfx()

func _on_load_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/select-profile.tscn")
	MusicManager.play_entersfx()

func _on_options_pressed() -> void:
	menu_btn.visible = false
	options_window.visible = true
	MusicManager.play_entersfx()

func _on_quit_pressed() -> void:
	get_tree().quit()
	MusicManager.play_entersfx()

func _on_backbtn_pressed() -> void:
	menu_btn.visible = true
	options_window.visible = false
	MusicManager.play_backsfx()
