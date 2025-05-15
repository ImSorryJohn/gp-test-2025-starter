extends CharacterBody2D
class_name Player

const SPEED = 300.0
@export var move_left:String
@export var move_right:String
@export var move_up:String
@export var move_down:String
@export var lives:int = 5

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
