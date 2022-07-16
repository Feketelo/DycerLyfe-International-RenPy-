extends Control

onready var dialogue_options = get_tree().get_nodes_in_group("dialogue_options")
onready var StartScreen = get_parent().get_node("StartScreen")
onready var scene_index = 0 # increments before the first scene

var current_round
var buttons_visible = false
onready var dialogue_path = get_parent().get_node("Encounter1").DialoguePath
var rng = RandomNumberGenerator.new()
var finished # true if text is fully displayed
var active
var points = 0
var success_chance


func _ready():
	#choose_scene()
	pass

func go_to_next_scene():
	var encounter_format = "Encounter%s"
	scene_index += 1
	var encounter_string = encounter_format % scene_index
	dialogue_path = get_parent().get_node(encounter_string).DialoguePath
	active = true
	set_current_round("round1")
	play_round()

func _physics_process(delta):
	if active:
		if Input.is_action_just_pressed("ui_accept"):
			if finished == true:
				if current_round["choices"] and !buttons_visible:
					display_buttons()
				elif !current_round["choices"]:
					set_current_round(current_round["goto"])
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
		go_to_next_scene()

func display_dialogue(words):
	finished = false
	print_debug('display dialogue')
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
	var button_index = 1
	var format_string = "choice%s"
	for button in dialogue_options:
		var choice_index = format_string % button_index
		if button_index < (current_round["choices"].size() + 1):
			button.text = current_round["choices"][choice_index]["text"]
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
	rng.randomize()
	return(rng.randi_range(0,100) <= percent)

func _on_Tween_tween_completed(object, key):
	finished = true

func _on_Button_pressed():
	StartScreen.hide()
	go_to_next_scene()

func _on_dialogue_option_1_pressed():
	if $TextBox/dialogue_option_1.text == current_round["choices"]["choice1"]["text"]:
		success_chance = current_round["choices"]["choice1"]["success_threshold"]
		if calcSuccess(success_chance):
			points += current_round["choices"]["choice1"]["points"]
			set_current_round(current_round["choices"]["choice1"]["success_goto"])
		else:
			points -= current_round["choices"]["choice1"]["points"]
			set_current_round(current_round["choices"]["choice1"]["failure_goto"])
		play_round()

func _on_dialogue_option_2_pressed():
	if $TextBox/dialogue_option_2.text == current_round["choices"]["choice2"]["text"]:
		success_chance = current_round["choices"]["choice2"]["success_threshold"]
		if calcSuccess(success_chance):
			points += current_round["choices"]["choice2"]["points"]
			set_current_round(current_round["choices"]["choice2"]["success_goto"])
		else:
			points -= current_round["choices"]["choice2"]["points"]
			set_current_round(current_round["choices"]["choice2"]["failure_goto"])
		play_round()

func _on_dialogue_option_3_pressed():
	if $TextBox/dialogue_option_3.text == current_round["choices"]["choice3"]["text"]:
		success_chance = current_round["choices"]["choice3"]["success_threshold"]
		if calcSuccess(success_chance):
			points += current_round["choices"]["choice3"]["points"]
			set_current_round(current_round["choices"]["choice3"]["success_goto"])
		else:
			points -= current_round["choices"]["choice3"]["points"]
			set_current_round(current_round["choices"]["choice3"]["failure_goto"])
		play_round()

func _on_dialogue_option_4_pressed():
	if $TextBox/dialogue_option_4.text == current_round["choices"]["choice4"]["text"]:
		success_chance = current_round["choices"]["choice4"]["success_threshold"]
		if calcSuccess(success_chance):
			points += current_round["choices"]["choice4"]["points"]
			set_current_round(current_round["choices"]["choice4"]["success_goto"])
		else:
			points -= current_round["choices"]["choice4"]["points"]
			set_current_round(current_round["choices"]["choice4"]["failure_goto"])
		play_round()
