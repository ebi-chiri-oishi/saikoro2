extends Node
@export	var SaikoroObject : RigidBody3D
@export var camera : Camera3D
func _physics_process(delta):
	camera.position = SaikoroObject.position + Vector3(0,5,5)
