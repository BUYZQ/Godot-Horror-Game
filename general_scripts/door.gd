extends Node3D

var opened = false
var locked = false

func toggle_door():
	if $AnimationPlayer.current_animation != "open" and $AnimationPlayer.current_animation != "close" and !locked:
		opened = !opened
		if !opened:
			$AnimationPlayer.play_backwards("open")
		else:
			$AnimationPlayer.play("open")
	elif locked:
			$AnimationPlayer.play_backwards("locked")
	
