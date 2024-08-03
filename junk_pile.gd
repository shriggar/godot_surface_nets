extends Node

@export var global_offset := Vector3i.ZERO
@export var chunk_size := 6

var _noise := FastNoiseLite.new()

func _ready() -> void:
	randomize()
	# Configure the FastNoiseLite instance.
	_noise.noise_type = FastNoiseLite.NoiseType.TYPE_SIMPLEX_SMOOTH
	#_noise.seed = randi()
	_noise.fractal_octaves = 4
	_noise.frequency = 1.0 / 15.0

func get_sample_value(index: Vector3i) -> float:
	return _noise.get_noise_3dv(index)
	#pass

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
