extends Control

onready var text = get_parent().get_node("Dialogue").dialogue_1
onready var dialogue_options = get_tree().get_nodes_in_group("dialogue_options")
var dialogue_index = 0
var finished
var active

func _ready():
	load_dialogue()

func _physics_process(delta):
	if active:
		
		if Input.is_action_just_pressed("ui_accept"):
			if finished == true:
				load_dialogue()
			else:
				$TextBox/Tween.stop_all()
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true
				
		for button in dialogue_options:
			button.visible = false
			if button.text == "":
				button.visible = false
			else:
				button.visible = true

func load_dialogue():
	if dialogue_index < text.size():
		active = true
		finished = false
		
		$TextBox.visible = true
		$TextBox/RichTextLabel.bbcode_text = text[dialogue_index]["Text"]
		$TextBox/Label.text = text[dialogue_index]["Name"]
		
		var button_index = 0
		for button in dialogue_options:
			button.text = text[dialogue_index]["Choices"][button_index]
			button_index += 1

		$TextBox/RichTextLabel.percent_visible = 0
		$TextBox/Tween.interpolate_property(
			$TextBox/RichTextLabel, "percent_visible", 0, 1, 2,
			Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
		)
		$TextBox/Tween.start()
	else:
		$TextBox.visible = false
		active = false
		finished = true
	
	dialogue_index += 1
	
func _on_Tween_tween_completed(object, key):
	finished = true
		
