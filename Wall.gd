extends Area2D

export var speed = 4
var acceleration
var screen_size

func _ready():
	screen_size = get_viewport_rect().size
	reset_position()

func reset_position():
	position.x = 0
	position.y = 0
	acceleration = 0.0

func _process(delta):
	acceleration = 0.0
	
	position.x += speed * delta
	
	if (position.x > screen_size.x):
		position.x = 0
