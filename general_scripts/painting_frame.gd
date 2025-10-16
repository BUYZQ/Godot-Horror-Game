extends Node3D

@export var painting: StandardMaterial3D

func _ready():
	$Plane.material_override = painting
