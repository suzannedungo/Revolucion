extends Node
@onready var btn_backsfx: AudioStreamPlayer = $back_sounds/btn_backsfx
@onready var btn_entersfx: AudioStreamPlayer = $back_sounds/btn_entersfx
@onready var btn_clearsfx: AudioStreamPlayer = $back_sounds/btn_clearsfx


#=========================btnSfx=========================
func play_backsfx():
	btn_backsfx.play()

func play_entersfx():
	btn_entersfx.play()

func play_clearsfx():
	btn_clearsfx.play()
