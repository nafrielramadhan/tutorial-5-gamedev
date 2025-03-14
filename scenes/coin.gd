extends Node2D


func _on_coin_collected(body):
	if body.get_name() == "Player":
		var audio = $Area2D/AudioStreamPlayer2D.duplicate()  
		get_parent().add_child(audio) 
		audio.play()
		queue_free()  
		await audio.finished
		audio.queue_free() 
