extends Node

const MOD_NAME = "otDan-GodotExplorer"

var scene_navigator

func _init(modLoader = ModLoader):
	ModLoaderUtils.log_info("Init Godot Explorer.", MOD_NAME)
	
func _ready():
	ModLoaderUtils.log_info("Readying Godot Explorer.", MOD_NAME)
	# Attach display to root
	var scene_navigator_path = ModLoaderUtils.get_local_folder_dir("mods-unpacked" + "/otDan-GodotExplorer/SceneNavigator.tscn")
	ModLoaderUtils.log_info(scene_navigator_path, MOD_NAME)
	var scene_navigator_instance = load(scene_navigator_path).instance()
	get_tree().root.call_deferred("add_child", scene_navigator_instance)

	ModLoaderUtils.log_info("Attached scene viewer to root", MOD_NAME)
