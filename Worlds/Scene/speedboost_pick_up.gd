extends Node2D

# this function is called whenever a body enters into the area2d
# "body: Node2D" is a reference to the interacted body
func _on_area_2d_body_entered(body: Node2D):
	# checks if the body entered is a Player type node
	if body is Player:
		# sets the player's speed to twice as fast
		body.spd = 120.0

		# "get_tree().create_timer(5.0)" creates and starts a timer with 5 seconds
		# ".timeout.connect(...)" connects a function to the signal "timeout"
		get_tree().create_timer(5.0).timeout.connect(
			func():
				# sets the player's speed back to default
			body.spd = 60.0
			)

		# deletes the pickup from the scene
		queue_free()
