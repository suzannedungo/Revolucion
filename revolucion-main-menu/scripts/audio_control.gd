extends HSlider

@export var audio_bus_name: String
var audio_bus_id
const CONFIG_PATH := "user://settings.cfg"
const CONFIG_SECTION := "audio"

func _ready() -> void:
	audio_bus_id = AudioServer.get_bus_index(audio_bus_name)

	# Load saved value using a unique key per slider
	var config = ConfigFile.new()
	var err = config.load(CONFIG_PATH)
	if err == OK:
		var saved_value = config.get_value(CONFIG_SECTION, audio_bus_name, self.value)
		self.value = saved_value
		AudioServer.set_bus_volume_db(audio_bus_id, linear_to_db(saved_value))
	else:
		AudioServer.set_bus_volume_db(audio_bus_id, linear_to_db(self.value))

func _on_value_changed(value: float) -> void:
	var db = linear_to_db(value)
	AudioServer.set_bus_volume_db(audio_bus_id, db)

	# Save value under unique key
	var config = ConfigFile.new()
	var err = config.load(CONFIG_PATH)
	if err != OK:
		config = ConfigFile.new()

	config.set_value(CONFIG_SECTION, audio_bus_name, value)
	config.save(CONFIG_PATH)
