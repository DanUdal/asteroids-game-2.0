extends CSGSphere


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
var R = 10
var theta = 0
var AngVel = PI/2
var Rtarget = R
var HeightSpeed = 5
var UpSpeedChange = PI/10
var DownSpeedChange = PI/4
var movement = 0
var health = 10

# Called when the node enters the scene tree for the first time.
func _ready():
	Controller.planet = self
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	translation = Vector3(R * cos(theta), 0 ,R * sin(theta)) #set position
	theta += AngVel * delta #update position
	R -= (R - 2.3)/10 * delta
	if AngVel < 5:
		AngVel += PI/120 * delta
	if theta >= 2 * PI: #reset to 0 every rotation
		theta -= 2 * PI
	if Input.is_action_pressed("ui_select") and AngVel >= PI/18:
		Rtarget = R
		Rtarget += 1.5
		movement = 1
	if Input.is_action_pressed("ui_shift"): #take keyboard input
		Rtarget = R
		Rtarget -= 1.5
		movement = -1
	if Input.is_action_pressed("ui_break") and AngVel >= PI/18:
		AngVel -= delta * 0.5
	if R < Rtarget and AngVel >= PI/18 and movement == 1: #change radius based on input
		R += HeightSpeed * delta
		AngVel -= UpSpeedChange * delta
		if R > Rtarget:
			R = Rtarget
			movement = 0
	if R > Rtarget and movement == -1:
		R -= HeightSpeed * delta
		AngVel += DownSpeedChange * delta
		if R < Rtarget:
			R = Rtarget
			movement = 0
	if R <= 2.5 or health <= 0:
		queue_free()
		get_tree().quit() #temporary end logic due to lack of main menu

func _on_Area_area_entered(area):
	health -= 1
	print("hit")
	area.get_parent().queue_free()
	Controller.score -= 100
