extends Node2D

var velocidade = Vector2(-700 , 0)
var velocidade_inicial = velocidade
var offset_inicial = Vector2(0 , 0)
var comecou = false
var acabou = false
var pontuacao_obstaculos = 10
var pontos = 0
var record = 0

func _ready():
	get_node("Ollie").connect("recomecou", self, "quando_recomecou")
	pass

func _process(delta):
	if not comecou:
		return
		
	velocidade.x -= delta / 5

func quando_recomecou():
	velocidade = velocidade_inicial
	$ParallaxBackground.set_scroll_offset(offset_inicial)
	pontos = 0
	get_node("Pontos").text = "Pontos: " + str(pontos)
