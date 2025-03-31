extends Node
func _physics_process(delta):
	var saikoro = $SaikoroObject as RigidBody3D
	var camera = $Camera3D as Camera3D
	camera.position = saikoro.position + Vector3(0,5,5)
	
