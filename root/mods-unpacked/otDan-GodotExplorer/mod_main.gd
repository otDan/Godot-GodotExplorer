extends Node

const MOD_NAME = "otDan-GodotExplorer"

#var scene_navigator

func _init(_modLoader = ModLoader):
	ModLoaderUtils.log_info("Init Godot Explorer.", MOD_NAME)

func _ready():
	ModLoaderUtils.log_info("Readying Godot Explorer.", MOD_NAME)

	# Attach display to root
	var scene_navigator_path = "res://mods-unpacked//otDan-GodotExplorer/SceneNavigator.tscn"
	var scene_navigator_instance = load(scene_navigator_path).instance()
	get_tree().root.call_deferred("add_child", scene_navigator_instance)

	ModLoaderUtils.log_success("Attached scene viewer to root", MOD_NAME)
