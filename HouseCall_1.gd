extends Control

onready var text = get_parent().get_node("Encounter1").encounter_1
onready var dialogue_options = get_tree().get_nodes_in_group("dialogue_options")

onready var StartScreen = get_parent().get_node("StartScreen")
var dialogue_index = "round1"
var current_round
var buttons_visible = false
onready var dialogue_path = get_parent().get_node("Encounter1").DialoguePath
var next_index = 1
var rng = RandomNumberGenerator.new()
var finished # true if text is fully displayed
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
				if current_round["choices"] and !buttons_visible:
					display_buttons()
				elif !current_round["choices"]:
					set_current_round(dialogue_path[current_round]["goto"])
					play_round()
			else:
				# Display Full Text
				$TextBox/Tween.stop_all()
				$TextBox/RichTextLabel.percent_visible = 1
				finished = true
		
func play_round():
	if active == true:
		hide_buttons()
		display_dialogue(current_round["text"])
	else:
		print_debug("go to next scene")
		# go_to_next_scene()

func display_dialogue(words):
	finished = false
	$TextBox.visible = true
	$TextBox/RichTextLabel.visible = true
	$TextBox/RichTextLabel.bbcode_text = words
	$TextBox/RichTextLabel.percent_visible = 0
	$TextBox/Tween.interpolate_property(
	$TextBox/RichTextLabel, "percent_visible", 0, 1, 2,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
	)
	$TextBox/Tween.start()
	
func display_buttons():
	var button_index = 0
	for button in dialogue_options:
		if button_index < text[dialogue_index]["Choices"].size():
			button.text = text[dialogue_index]["Choices"][button_index]["Text"]
		button_index += 1
					
	for button in dialogue_options:
		if button.text == "":
			button.visible = false
		else:
			button.visible = true

func set_current_round(goto):
	if goto == "end":
		active = false
	else:
		current_round = dialogue_path[goto]

func hide_buttons():
	for button in dialogue_options:
		button.visible = false

func calcSuccess(percent):
	rng.randi_range(0,100) <= percent

func _on_Tween_tween_completed(object, key):
	finished = true

func _on_Button_pressed():
	StartScreen.hide()
	play_round() 

func _on_dialogue_option_1_pressed():
	if $TextBox/dialogue_option_1.text == current_round["choices"]["choice_1"]["text"]:
		success_chance = current_round["choices"]["choice_1"]["success_threshold"]
		if calcSuccess(success_chance):
			points += current_round["choices"]["choice_1"]["points"]
			set_current_round(current_round["choices"]["choice_1"]["success_goto"])
		else:
			points -= current_round["choices"]["choice_1"]["points"]
			set_current_round(current_round["choices"]["choice_1"]["failure_goto"])
		play_round()

func _on_dialogue_option_2_pressed():
	if $TextBox/dialogue_option_2.text == current_round["choices"]["choice_2"]["text"]:
		success_chance = current_round["choices"]["choice_2"]["success_threshold"]
		if calcSuccess(success_chance):
			points += current_round["choices"]["choice_2"]["points"]
			set_current_round(current_round["choices"]["choice_2"]["success_goto"])
		else:
			points -= current_round["choices"]["choice_2"]["points"]
			set_current_round(current_round["choices"]["choice_2"]["failure_goto"])
		play_round()

func _on_dialogue_option_3_pressed():
	if $TextBox/dialogue_option_3.text == current_round["choices"]["choice_3"]["text"]:
		success_chance = current_round["choices"]["choice_3"]["success_threshold"]
		if calcSuccess(success_chance):
			points += current_round["choices"]["choice_3"]["points"]
			set_current_round(current_round["choices"]["choice_3"]["success_goto"])
		else:
			points -= current_round["choices"]["choice_3"]["points"]
			set_current_round(current_round["choices"]["choice_3"]["failure_goto"])
		play_round()

func _on_dialogue_option_4_pressed():
	if $TextBox/dialogue_option_4.text == current_round["choices"]["choice_4"]["text"]:
		success_chance = current_round["choices"]["choice_4"]["success_threshold"]
		if calcSuccess(success_chance):
			points += current_round["choices"]["choice_4"]["points"]
			set_current_round(current_round["choices"]["choice_4"]["success_goto"])
		else:
			points -= current_round["choices"]["choice_4"]["points"]
			set_current_round(current_round["choices"]["choice_4"]["failure_goto"])
		play_round()
