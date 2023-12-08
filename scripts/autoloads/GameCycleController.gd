class_name GameCycleController
extends Node

@onready var _state_machine : GameStateMachine = $/root/Main/GameStateMachine

func load_level(name: String):
	_state_machine.change_state("LevelLoadState", name)

func go_to_main_menu():
	_state_machine.change_state("LevelLoadState", "MainMenu")
	print("HI")
