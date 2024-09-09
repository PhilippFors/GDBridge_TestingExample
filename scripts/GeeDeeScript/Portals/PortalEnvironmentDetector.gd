extends Area3D

@export var colliders: StaticBody3D
var tracked_bodies = []

func _physics_process(delta: float) -> void:
	#for body in tracked_bodies:
		#if _check_shapecast_collision(body):
			#setCollisions(body)

			#unSetCollision(body)
	pass

func _process(delta: float) -> void:
	#temp checking in process for angles and whatever
	if global_transform.basis.y.dot(Vector3.UP) != 1:
		$"../RigidBody3D/CollisionShape3D6".disabled = true
	else:
		$"../RigidBody3D/CollisionShape3D6".disabled = false

func setCollisions(body):
	body.set_collision_layer_value(1, false)
	body.set_collision_mask_value(1, false)
	body.set_collision_layer_value(3, true)
	body.set_collision_mask_value(3, true)
	
func unSetCollision(body):
	body.set_collision_layer_value(1, true)
	body.set_collision_mask_value(1, true)
	body.set_collision_layer_value(3, false)
	body.set_collision_mask_value(3, false)

func _on_body_entered(body):
	print("body in environment range of " + $"..".name)
	tracked_bodies.append(body)
	setCollisions(body)
	
func _on_body_exited(body):
	print("body out of environment range of " + $"..".name)
	unSetCollision(body)
	for i in len(tracked_bodies):
		if(tracked_bodies[i] == body):
			tracked_bodies.remove_at(i)
	
func _check_shapecast_collision(body):
	$PortalEnvShapeCast.force_shapecast_update()
	for i in $PortalEnvShapeCast.get_collision_count():
		if $PortalEnvShapeCast.get_collider(i) == body:
			return true	
	return false
	
