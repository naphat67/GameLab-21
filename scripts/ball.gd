extends RigidBody2D

func _ready() -> void:
	# Give each instance a small sideways variation so the changed physics is visible.
	if linear_velocity.length() < 1.0:
		linear_velocity = Vector2(randf_range(-80.0, 80.0), 0.0)
