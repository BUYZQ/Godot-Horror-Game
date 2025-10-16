extends RayCast3D

@onready var player_cursor = get_parent().get_parent().get_node("PlayerUi/CanvasLayer/CenterCursorContainer/CursorTexture")

func _physics_process(_delta):
	if is_colliding():
		var hit = get_collider()
		
		if hit.name == "door":
			if !player_cursor.visible:
				player_cursor.visible = true
			if Input.is_action_just_pressed("interact"):
				hit.get_parent().get_parent().get_parent().toggle_door()
				
		elif hit.name == "drawer":
			if !player_cursor.visible:
				player_cursor.visible = true
			if Input.is_action_just_pressed("interact"):
				hit.get_parent().get_parent().toggle_door()
				
		elif hit.name == "door_bell":
			if !player_cursor.visible:
				player_cursor.visible = true
			if Input.is_action_just_pressed("interact"):
				hit.get_parent().get_parent().ring_bell()
				
		elif hit.name == "light_switch":
			if !player_cursor.visible:
				player_cursor.visible = true
			if Input.is_action_just_pressed("interact"):
				hit.get_parent().toggle_light()
				
		elif hit.name == "lamp_switch":
			if !player_cursor.visible:
				player_cursor.visible = true
			if Input.is_action_just_pressed("interact"):
				hit.get_parent().toggle_light()
	else:
		player_cursor.visible = false
			
	
