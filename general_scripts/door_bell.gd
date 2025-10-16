extends Node3D

var times_rung = 0
@export var door: Node3D
@onready var ui = get_tree().current_scene.get_node("Player/PlayerUi")

func _ready():
	door.locked = true

func ring_bell():
	if $AnimationPlayer.current_animation != "press" and times_rung < 2:
		times_rung += 1
		$AnimationPlayer.play("press")
		if times_rung >= 2:
			ui.set_task(null, "Войти в дом")
			door.locked = false
			door.get_node("AnimationPlayer").play("open")
			door.opened = true
