extends Node


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	$AYEC.play()
	$AnimatedSprite2D.visible = true
	$WhiteBird.visible = true
	pass # Replace with function body.


func _on_body_exited(body):
	$AYEC.stop()
	pass # Replace with function body.
