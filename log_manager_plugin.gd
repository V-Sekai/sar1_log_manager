@tool
extends EditorPlugin

func _init():
	print("Initialising LogManager plugin")

func _get_plugin_name() -> String:
	return "LogManager"


func _notification(p_notification: int):
	match p_notification:
		NOTIFICATION_PREDELETE:
			print("Destroying LogManager plugin")


func _enter_tree() -> void:
	add_autoload_singleton("LogManager", "res://addons/sar1_log_manager/log_manager.gd")


func _exit_tree() -> void:
	remove_autoload_singleton("LogManager")
