extends CSGSphere


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var rng = RandomNumberGenerator.new()
var R = 30
var speed = 15
var theta = PI/2

# Called when the node enters the scene tree for the first time.
func _ready():
	rng.randomize()
	theta = rng.randf_range(0, 2 * PI)
	translation = Vector3(R * sin(theta), 0, R * cos(theta))


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	R -= speed * delta
	translation = Vector3(R * sin(theta), 0, R * cos(theta))
	if R <= 0:
		queue_free()


func _on_Area_area_entered(area):
	if R > 29:
		rng.randomize()
		theta = rng.randf_range(0, 2 * PI)
		translation = Vector3(R * sin(theta), 0, R * cos(theta))
	else:
		area.get_parent().queue_free()
		queue_free()
