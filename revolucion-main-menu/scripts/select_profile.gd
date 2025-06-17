extends Control
@onready var confirmation_1_window: Panel = $Confirmation_window/confirmation1_window
@onready var confirmation_2_window: Panel = $Confirmation_window/confirmation2_window
@onready var confirmation_3_window: Panel = $Confirmation_window/confirmation3_window



@onready var name_window_1: Panel = $Name_window/Name_window1
@onready var name_window_2: Panel = $Name_window/Name_window2
@onready var name_window_3: Panel = $Name_window/Name_window3



func _ready() -> void:
	confirmation_1_window.visible = false
	confirmation_2_window.visible = false
	confirmation_3_window.visible = false

	name_window_1.visible = false
	name_window_2.visible = false
	name_window_3.visible = false


#============================Saved files============================
func _on_save_1_pressed() -> void:
	name_window_1.visible = true
	MusicManager.play_entersfx()

func _on_save_2_pressed() -> void:
	name_window_2.visible = true
	MusicManager.play_entersfx()

func _on_save_3_pressed() -> void:
	name_window_3.visible = true
	MusicManager.play_entersfx()


#============================Clear save============================
func _on_clear_1_pressed() -> void:
	confirmation_1_window.visible = true
	MusicManager.play_clearsfx()

func _on_clear_2_pressed() -> void:
	confirmation_2_window.visible = true
	MusicManager.play_clearsfx()

func _on_clear_3_pressed() -> void:
	confirmation_3_window.visible = true
	MusicManager.play_clearsfx()


#============================Back button============================
func _on_backbtn_pressed() -> void:
	get_tree().change_scene_to_file("res://Scenes/main-menu.tscn")
	MusicManager.play_backsfx()


func _on_name1_back_pressed() -> void:
	name_window_1.visible = false
	MusicManager.play_backsfx()

func _on_name2_back_pressed() -> void:
	name_window_2.visible = false
	MusicManager.play_backsfx()

func _on_name3_back_pressed() -> void:
	name_window_3.visible = false
	MusicManager.play_backsfx()


#============================Clear window============================
func _nobtn_pressed() -> void:
	confirmation_1_window.visible = false
	confirmation_2_window.visible = false
	confirmation_3_window.visible = false
	MusicManager.play_backsfx()


func _on_yesbtn1_pressed() -> void:
	MusicManager.play_entersfx()

func _on_yesbtn2_pressed() -> void:
	MusicManager.play_entersfx()

func _on_yesbtn3_pressed() -> void:
	MusicManager.play_entersfx()


#============================Name window============================
func _on_confirm1_btn_pressed() -> void:
	MusicManager.play_entersfx()

func _on_confirm2_btn_pressed() -> void:
	MusicManager.play_entersfx()

func _on_confirm3_btn_pressed() -> void:
	MusicManager.play_entersfx()
