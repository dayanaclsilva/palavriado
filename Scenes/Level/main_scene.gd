extends Node2D

@export var letterReference : PackedScene

@onready var barReference : CanvasLayer = %BarraDeCartas

func _ready() -> void:
	pass

func CriarCarta(id, amount) -> void:
	var numberOfCopies : int = amount
	
	for count in range(numberOfCopies):
		var newLetter : Letra = letterReference.instantiate()
		var spawnLocation : BoxContainer = %"PosiçãoDaCarta"
		newLetter.id = id
		newLetter.position
		spawnLocation.add_child(newLetter)

func _on_button_pressed() -> void:
	CriarCarta(%IdSpinBox.value, %AmountSpinBox.value)
