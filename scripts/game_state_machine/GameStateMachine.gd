class_name GameStateMachine
extends Node


@export var assign_states : Array[GameState]
var _states : Dictionary

var _active_state : GameState


func _ready():
	_populate_states_dictionary()

func change_state(state, payload=null):
	if _active_state:
		_active_state.on_exit(payload)
	
	_active_state = _states[state]
	
	_active_state.on_enter(payload)


func _populate_states_dictionary():
		for node in assign_states:
			_states[node.name] = node as GameState
