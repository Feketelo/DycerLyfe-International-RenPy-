extends Control

onready var text = get_parent().get_node("Encounter1").encounter_1
onready var dialogue_options = get_tree().get_nodes_in_group("dialogue_options")
onready var StartScreen = get_parent().get_node("StartScreen")
var dialogue_index = 0
var next_index = 1
var rng = RandomNumberGenerator.new()
var finished
var active
var points = 0
var success_chance

func _ready():
	#choose_scene()
	pass

func _physics_process(delta):
	if active:
		if Input.is_action_just_pressed("ui_accept"):
			print_debug("space")
			if finished == true:
				dialogue_index += 1
			else:
				$TextBox/Tween.stop_all()
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true
				
			for button in dialogue_options:
				if button.text == "":
					button.visible = false
				else:
					button.visible = true
			progress_scene()

		
func progress_scene():
	if dialogue_index < text.size():
		active = true
		finished = false
		# TODO this should be a switch statement
		if text[dialogue_index]["Type"] == "Text":
			display_dialogue()
		elif text[dialogue_index]["Type"] == "Choices":
			display_buttons()
			print_debug("display choices")
	else:
		$TextBox.visible = false
		active = false
		finished = true

func display_dialogue():
	if dialogue_index < text.size():
		print_debug("showing text box")
		tween_text(text[dialogue_index]["Text"])
	else:
		progress_scene()
		
func display_buttons():
	var button_index = 0
	for button in dialogue_options:
		if button_index < text[dialogue_index]["Choices"].size():
			button.text = text[dialogue_index]["Choices"][button_index]["Text"]
		button_index += 1

func tween_text(words):
	$TextBox.visible = true
	$TextBox/RichTextLabel.visible = true
	$TextBox/RichTextLabel.bbcode_text = words

	$TextBox/RichTextLabel.percent_visible = 0
	$TextBox/Tween.interpolate_property(
	$TextBox/RichTextLabel, "percent_visible", 0, 1, 2,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
	)
	$TextBox/Tween.start()

func calcSuccess(percent):
	rng.randi_range(0,100) <= percent

func _on_Tween_tween_completed(object, key):
	finished = true

func _on_Button_pressed():
	StartScreen.hide()
	progress_scene() 

func _on_dialogue_option_1_pressed():
	if $TextBox/dialogue_option_1.text == text[dialogue_index]["Choices"][0]["Text"]:
		success_chance = text[dialogue_index]["Choices"][0]["Success%"]
		if calcSuccess(success_chance):
			points += text[dialogue_index]["Choices"][0]["Points"]
			finished = false
			tween_text(text[dialogue_index]["Choices"][0]["SuccessText"])
		else:
			points -= text[dialogue_index]["Choices"][0]["Points"]
			tween_text(text[dialogue_index]["Choices"][0]["FailureText"])
		dialogue_index = text[dialogue_index]["Choices"][0]["GoTo"]

func _on_dialogue_option_2_pressed():
	if $TextBox/dialogue_option_2.text == text[dialogue_index]["Choices"][1]["Text"]:
		success_chance = text[dialogue_index]["Choices"][1]["Success%"]
		if calcSuccess(success_chance):
			points += text[dialogue_index]["Choices"][1]["Points"]
		else:
			points -= text[dialogue_index]["Choices"][1]["Points"]
		dialogue_index = text[dialogue_index]["Choices"][0]["GoTo"]

func _on_dialogue_option_3_pressed():
	if $TextBox/dialogue_option_3.text == text[dialogue_index]["Choices"][2]["Text"]:
		success_chance = text[dialogue_index]["Choices"][2]["Success%"]
		if calcSuccess(success_chance):
			points += text[dialogue_index]["Choices"][2]["Points"]
		else:
			points -= text[dialogue_index]["Choices"][2]["Points"]
		dialogue_index = text[dialogue_index]["Choices"][0]["GoTo"]

func _on_dialogue_option_4_pressed():
	if $TextBox/dialogue_option_4.text == text[dialogue_index]["Choices"][3]["Text"]:
		success_chance = text[dialogue_index]["Choices"][3]["Success%"]
		if calcSuccess(success_chance):
			points += text[dialogue_index]["Choices"][3]["Points"]
		else:
			points -= text[dialogue_index]["Choices"][3]["Points"]
		dialogue_index = text[dialogue_index]["Choices"][0]["GoTo"]
