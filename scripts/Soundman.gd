extends  Area2D

signal soundman_changed(new_state)



@onready var hello_anim = $HelloAnim


func _on_body_entered(body):
	hello_anim.visible = true;
	hello_anim.play("on")




func _on_body_exited(body):
	hello_anim.play("off")
	
	pass # Replace with function body.


func _on_hello_anim_animation_finished():
	
	if hello_anim.animation == 'off':
		hello_anim.visible = false;
	
