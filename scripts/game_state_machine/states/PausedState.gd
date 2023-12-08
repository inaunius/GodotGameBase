class_name PausedState
extends GameState


@export var _game_pause : GamePause
@export var _pause_ui : PauseUI


func on_enter(payload=null):
	print("ENTERED GAME PAUSE")
	_game_pause.Pause()
	_pause_ui.show_ui()
	
func on_exit(payload=null):
	print("EXITED GAME PAUSE")
	_game_pause.Resume()
	_pause_ui.hide_ui()
