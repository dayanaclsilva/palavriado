extends CanvasLayer

@onready var barra = %Barra
@onready var posicaoDaCarta = %"PosiçãoDaCarta"

var cartasNaBarra : int = 0
var tamanhoBase : Vector2 = Vector2(100, 100) # Tamanho inicial
var incremento : int = 50 # Quanto crece por carta

var centro : Vector2

func _ready() -> void:
	centro = Vector2(get_viewport().size) / 2
	barra.global_position = centro
	barra.size = tamanhoBase
	barra.pivot_offset = barra.size / 2

func AtualizarBarra() -> void:
	var novoTamanho = Vector2(tamanhoBase.x + cartasNaBarra * incremento, tamanhoBase.y)
	centro = Vector2(get_viewport().size) / 2
	
	var tween = create_tween()
	tween.tween_property(barra, "size", novoTamanho, 0.3).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)
	tween.tween_property(barra, "position", centro - novoTamanho / 2, 0.3).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)
	tween.tween_property(posicaoDaCarta, "global_position", centro - novoTamanho, 0.3).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)
	tween.tween_property(posicaoDaCarta, "size", novoTamanho, 0.3).set_trans(Tween.TRANS_BOUNCE).set_ease(Tween.EASE_OUT)

func AdicionarCarta() -> void:
	cartasNaBarra += 1
	AtualizarBarra()

func RemoverCarta() -> void:
	if cartasNaBarra > 0:
		cartasNaBarra -= 1
		AtualizarBarra()

func _on_button_pressed() -> void:
	AdicionarCarta()
