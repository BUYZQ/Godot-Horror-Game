extends Control


# Called when the node enters the scene tree for the first time.
func _ready():
	$PauseMenu.visible = false
	set_task(null, "Позвонить в звонок")

func _process(_delta):
	if Input.is_action_just_pressed("pause"):
		$PauseMenu.visible = !$PauseMenu.visible
		get_tree().paused = $PauseMenu.visible 
		
		if get_tree().paused:
			Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
		if !get_tree().paused:
			Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func resume_game():
	$PauseMenu.visible = false
	get_tree().paused = false
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)

func quit_game():
	get_tree().quit()
	
	
func set_task(body, task_text: String):
	if body == null || body != null and body.name == "Player":
		$TaskUi/TaskText.text = task_text
	
func _on_resume_pressed():
	resume_game()


func _on_quit_game_pressed():
	quit_game()
