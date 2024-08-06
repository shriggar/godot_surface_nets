extends Node3D

const I_AM_CHUNK := preload("res://chunk.tscn")


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	var size := 2
	for x in range(-size, size):
		for y in range(-size, size):
			for z in range(-size, size):
				create_chunk(Vector3i(x*JunkPile.chunk_size*2,y*JunkPile.chunk_size*2,z*JunkPile.chunk_size*2));
	#pass # Replace with function body.

func create_chunk(chunk_here:Vector3i) -> void:
	var new_chunk := I_AM_CHUNK.instantiate()
	new_chunk.position = chunk_here
	add_child(new_chunk)

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta: float) -> void:
	#pass
