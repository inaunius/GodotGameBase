class_name LevelLoadUI
extends CanvasLayer


@export var _ui_parent : Control
@export var _fade_duration : float


func show_ui():
	_tween_visibility(255)
	_ui_parent.show()


func hide_ui():
	_tween_visibility(0)
	_ui_parent.hide()

func _tween_visibility(final_val : float):
	var tween = create_tween()
	tween.tween_property(_ui_parent, "self_modulate", Color.AQUA, _fade_duration).set_trans(Tween.TRANS_QUART)
	
