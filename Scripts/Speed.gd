extends RichTextLabel


# Declare member variables here. Examples:
# var a = 2
# var b = "text"


# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if is_instance_valid(Controller.planet):
		text = str(str(Controller.planet.AngVel) + "\n" + str(Controller.planet.R)
			+ "\n" + str(Controller.score) + "\n" + str(Controller.planet.health))
