extends Node2D


# Called when the node enters the scene tree for the first time.
func _ready():
	$AnimationPlayer.play("fadedin")
	
	await get_tree().create_timer(3).timeout
	
	$AnimationPlayer.play("fadedout")
	
	
	
	



func _on_animation_player_animation_finished(anim_name):
	get_tree().change_scene_to_file("res://scenes/game.tscn")
	
