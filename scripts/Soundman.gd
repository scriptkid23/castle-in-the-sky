extends  Area2D

signal soundman_changed(new_state)


@onready var myvoice = $MyVoice
@onready var hello_anim = $HelloAnim


func _on_body_entered(body):
	hello_anim.visible = true;
	hello_anim.play("on")
	myvoice.play()




func _on_body_exited(body):
	hello_anim.play("off")



func _on_hello_anim_animation_finished():
	
	if hello_anim.animation == 'off':
		hello_anim.visible = false;
		myvoice.stop()
	
