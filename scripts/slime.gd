extends Node2D

const speed = 50

var direction = 1

@onready var ray_cast_2d_r: RayCast2D = $RayCast2D_R
@onready var ray_cast_2d_l: RayCast2D = $RayCast2D_L
@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	if ray_cast_2d_r.is_colliding():
		direction = -1
		animated_sprite_2d.flip_h = true
	if ray_cast_2d_l.is_colliding():
		direction = 1
		animated_sprite_2d.flip_h = false
	position.x += direction * speed * delta
