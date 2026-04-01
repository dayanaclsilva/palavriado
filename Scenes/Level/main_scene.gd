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
		newLetter.position += spawnLocation.position
		spawnLocation.add_child(newLetter)

func _on_button_pressed() -> void:
	#Carrega a classe C# e inicia uma instancia
	var script_cs = load("res://Classes/Dicionario.cs")
	var dicionario = script_cs.new()
	#Recebe uma lista de letras (Id,Descricao) que compõe a mão do jogador	
	var teste = dicionario.PrepararMao()
	for letra in teste:
		if letra != null:
			print("ID: ", letra.Id, " - Descrição: ", letra.Descricao)
	CriarCarta(%IdSpinBox.value, %AmountSpinBox.value)
