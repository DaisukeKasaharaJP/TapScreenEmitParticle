extends ColorRect

onready var AniNode = $AnimationPlayer
onready var TapSprite = $TapSprite


func _ready():
	self.rect_position = self.get_parent().get_parent().rect_position


func event_screen_closed():
#	Global.gd_signal("Event","screen_closed")
	pass


func _input(event):
	if event is InputEventMouseButton:
		if event.button_index == BUTTON_LEFT and event.pressed:
			print("[TouchEvent] Left button was clicked at ", event.position)
		
			#click.frame = 0
			#click.play("default")
			TapSprite.rect_position = event.position - TapSprite.rect_size/2
			AniNode.play("tap")
			AniNode.seek(0)
			
		if event.button_index == BUTTON_WHEEL_UP and event.pressed:
			print("[TouchEvent] Wheel up")
