extends Node3D

var times_rung = 0
@export var door: Node3D

func _ready():
	door.locked = true

func ring_bell():
	if $AnimationPlayer.current_animation != "press" and times_rung < 2:
		times_rung += 1
		$AnimationPlayer.play("press")
		if times_rung >= 2:
			door.locked = false
			door.get_node("AnimationPlayer").play("open")
			door.opened = true
