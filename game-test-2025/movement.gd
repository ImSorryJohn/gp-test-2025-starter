extends CharacterBody2D

const SPEED = 100


func _ready() -> void:

	pass 
func _physics_process(delta: float) -> void:
	
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
	
	pass


func _process(delta: float) -> void:
	pass
