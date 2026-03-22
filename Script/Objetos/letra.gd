extends Node2D
class_name Letra

@export var id : int = 0
@export var letterName : String = ""
@export var descrição : String = ""

@onready var animatedSprite : AnimatedSprite2D = %AnimatedSprite2D

func _process(delta: float) -> void:
	animatedSprite.frame = id
