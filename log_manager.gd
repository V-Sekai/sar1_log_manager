tool
extends Node

signal printl(p_string)
signal error(p_string)
signal fatal_error(p_string)

func printl(p_line_string):
	emit_signal("printl", p_line_string)


func error(p_error_string):
	emit_signal("error", p_error_string)


func fatal_error(p_error_string):
	emit_signal("fatal_error", p_error_string)
	
	if not Engine.is_editor_hint():
		get_tree().quit()  #default behavior
