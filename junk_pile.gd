extends Node


@export var max_chunk_edge_length_in_voxels:int = 16
@export var chunk_edge_length_in_meters:float = 16

@export var global_chunk_offset:Vector3i = Vector3i.ZERO

var _noise := FastNoiseLite.new()

func _ready() -> void:
	randomize()
	# Configure the FastNoiseLite instance.
	_noise.noise_type = FastNoiseLite.NoiseType.TYPE_SIMPLEX_SMOOTH
	_noise.seed = randi()
	_noise.fractal_octaves = 4
	_noise.frequency = 1.0 / 20.0

#func get_sample_value(index: Vector3i) -> float:
	#pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
