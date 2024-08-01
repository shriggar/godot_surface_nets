class_name PointView;
extends MultiMeshInstance3D

var _count:int = 0;

func _ready() -> void:
	multimesh.visible_instance_count = 0;

func add_point(point_position: Vector3, color: Color) -> void:
	var index := _count;
	_count += 1;
	
	if index >= multimesh.instance_count:
		print("Trying to render point %s but only have %s instances" % [
			str(index), str(multimesh.instance_count)
		])
		return;
	
	multimesh.set_instance_color(index, color);
	multimesh.set_instance_transform(index, Transform3D.IDENTITY.translated(point_position));
	
	multimesh.visible_instance_count += 1;
