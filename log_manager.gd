@tool
extends Node

signal printl_hook(p_string)
signal error_hook(p_string)
signal fatal_error_hook(p_string)

func printl(p_line_string):
	emit_signal("printl_hook", p_line_string)


func error(p_error_string):
	emit_signal("error_hook", p_error_string)


func fatal_error(p_error_string):
	push_error(p_error_string)
	emit_signal("fatal_error_hook", p_error_string)
	
	if not Engine.is_editor_hint():
		get_tree().quit()  #default behavior
