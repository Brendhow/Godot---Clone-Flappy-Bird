extends Node2D

export var vel = -400

var cena

func _ready():
	set_process(true)
	cena = get_tree().get_current_scene()

func _process(delta):
	if cena.estado == cena.JOGANDO:
		set_pos(get_pos() + Vector2(vel * delta, 0))
	
	if get_pos().x < -100:
		print("Destruido")
		queue_free()


func _on_Area2D_body_enter( body ):
	if body.get_name() == "Felpudo":
		cena.kill()