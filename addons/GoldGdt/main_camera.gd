extends Camera3D

var raycastRange = 1000

# Called when the node enters the scene tree for the first time.

func _input(event: InputEvent) -> void:		
	if event.is_action_pressed("primary_fire"):
		getRaycastCollision()

func getRaycastCollision():
	var center = get_viewport().get_size()/2
	var fire_origin = project_ray_origin(center)
	var fire_end = fire_origin + project_ray_normal(center)*raycastRange
	var newIntersect = PhysicsRayQueryParameters3D.create(fire_origin, fire_end)
	var Intersect = get_world_3d().direct_space_state.intersect_ray(newIntersect)
	
	if not Intersect.is_empty():
		print(Intersect.collider.name) ## debug collider print

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
