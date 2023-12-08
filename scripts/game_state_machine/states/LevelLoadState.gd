class_name LevelLoadState
extends GameState


@export var level_loader : LevelLoader
@export var level_load_ui : LevelLoadUI


func on_enter(payload=null):
	print("LOADING LEVEL")
	level_load_ui.show_ui()
	level_loader.load_level(payload)
	_state_machine.change_state("DataLoadState")
