extends Node
@export	var saikoro : RigidBody3D
@export var camera : Camera3D
func _physics_process(delta):
	camera.position = saikoro.position + Vector3(0,5,10)
