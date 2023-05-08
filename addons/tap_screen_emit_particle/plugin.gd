tool
extends EditorPlugin



func _enter_tree():
	add_autoload_singleton("TapScreenEmitParticle", "res://addons/tap_screen_emit_particle/TapScreenEmitParticle.tscn")
	pass

func _exit_tree():
	remove_autoload_singleton("TapScreenEmitParticle")
	pass
