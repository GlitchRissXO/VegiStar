extends RichTextLabel

var timer
var loc_title := self
func _ready() -> void: 
	timer = $"../Timer" 
	timer.timeout.connect(_on_timer_timeout) 


func _on_timer_timeout() -> void:
	var tween = create_tween()
	tween.tween_property(loc_title, "modulate:a", 0.0, 1.0) #fade for one second
	tween.finished.connect(_on_fade_complete)


func _on_fade_complete() -> void:
	loc_title.hide() 
