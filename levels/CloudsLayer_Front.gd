extends ParallaxLayer

const CLOUD_SPEED := -30

func _process(delta) -> void:
	self.motion_offset.x += CLOUD_SPEED * delta
