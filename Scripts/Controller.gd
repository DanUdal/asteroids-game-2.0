extends Node


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var planet
var speed
var asteroids = load("res://Prefabs/BaseAsteroid.tscn")
var timer = 0.5
onready var baseNode = get_node(".")
var score = 0
var scoreTimer = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if timer <= 0:
		for rocks in range(int(score/1000) + 1):
			var asteroid = asteroids.instance()
			baseNode.add_child(asteroid)
			timer = asteroid.R / asteroid.speed
	timer -= delta
	if is_instance_valid(planet):
		if scoreTimer >= 3:
			score += (planet.R) * 15
			scoreTimer = 0
		else:
			scoreTimer += delta
