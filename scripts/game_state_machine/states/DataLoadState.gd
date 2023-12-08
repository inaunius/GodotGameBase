class_name DataLoadState
extends GameState


@export var _persistent_data : PersistentData
@export var _level_load_ui : LevelLoadUI

func on_enter(payload=null):
	print("LOADING DATA")
	_state_machine.change_state("ActiveGameState")
	
	
func on_exit(payload=null):
	_level_load_ui.hide_ui()
