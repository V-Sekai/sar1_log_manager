@tool
extends Node

signal printl_hook(p_string)
signal error_hook(p_string)
signal fatal_error_hook(p_string)

func printl(p_line_string):
	printl_hook.emit(p_line_string)


func error(p_error_string):
	error_hook.emit(p_error_string)


func fatal_error(p_error_string):
	push_error(p_error_string)
	fatal_error_hook.emit(p_error_string)
	
	if not Engine.is_editor_hint():
		get_tree().quit()  #default behavior
