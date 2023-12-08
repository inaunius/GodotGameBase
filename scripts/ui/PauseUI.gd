class_name PauseUI
extends CanvasLayer


@export var _ui_parent : Control
@export var _fade_duration : float

func show_ui():
	_tween_visibility(255)


func hide_ui():
	_tween_visibility(0)
	

func _tween_visibility(final_val : float):
	var tween = create_tween()
	tween.tween_property(_ui_parent, "self_modulate.a", final_val, _fade_duration).set_trans(Tween.TRANS_QUART)
	
	
