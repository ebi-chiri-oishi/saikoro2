extends Node3D
var isRoring = false;
func _ready():
	var button :  = $Button as Button
	button.pressed.connect(clicked_Button)
	var saikoro := $SaikoroObject as RigidBody3D
	saikoro.rotation = Vector3(randi_range(0,360),randi_range(0,360),randi_range(0,360))
func clicked_Button():
	isRoring = !isRoring
	if isRoring == true:
		var saikoro := $SaikoroObject as RigidBody3D
		saikoro.position = Vector3(0,6,0)
func _physics_process(delta: float) -> void:
	var saikoro := $SaikoroObject as RigidBody3D
	if isRoring == true:
			saikoro.rotation = Vector3(randi_range(0,360),randi_range(0,360),randi_range(0,360))
	var camera = $Camera3D as Camera3D
	camera.position = saikoro.position + Vector3(0,12,12)
