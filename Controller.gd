extends Control

onready var dialogue_options = get_tree().get_nodes_in_group("dialogue_options")
onready var StartScreen = get_parent().get_node("StartScreen")
onready var scene_index = 0 # increments before the first scene
onready var CreditsScreen = get_parent().get_node("CreditsScreen")

var current_round
var buttons_visible = false
onready var dialogue_path = get_parent().get_node("Encounter1").DialoguePath
onready var encounter_node = get_parent().get_node("Encounter1")
var rng = RandomNumberGenerator.new()
var finished # true if text is fully displayed
var active
var points = 0
var success_chance

var characters = [
	"res://Images/Customer_Models/Customer_Male_03b.png",
	"res://Images/Customer_Models/Customer_Male_03a.png",
	"res://Images/Customer_Models/Customer_Male_02c.png",
	"res://Images/Customer_Models/Customer_Male_02b.png",
	"res://Images/Customer_Models/Customer_Male_02a.png",
	"res://Images/Customer_Models/Customer_Male_01c.png",
	"res://Images/Customer_Models/Customer_Male_01b.png",
	"res://Images/Customer_Models/Customer_Male_01a.png",
	"res://Images/Customer_Models/Customer_Female_01a.png",
	"res://Images/Customer_Models/Customer_Female_01b.png",
	"res://Images/Customer_Models/Customer_Female_01c.png",
	"res://Images/Customer_Models/Customer_Female_01d.png",
	"res://Images/Customer_Models/Customer_Female_01e.png",
	"res://Images/Customer_Models/Customer_Female_01f.png",
	"res://Images/Customer_Models/Customer_Female_0ga.png"
]

var dice_sounds = [
	preload("res://Audio/SoundFX/Dice1.mp3"),
	preload("res://Audio/SoundFX/Dice2.mp3"),
	preload("res://Audio/SoundFX/Dice3.mp3")
]

func _ready():
	$BackgroundMusic.play()
	pass
	#Turn off looping ahh
	#choose_scene()

func go_to_next_scene():
	var encounter_format = "Encounter%s"
	var encounter_string = encounter_format % scene_index
	print_debug(encounter_string)
	dialogue_path = get_parent().get_node(encounter_string).DialoguePath
	encounter_node = get_parent().get_node(encounter_string)
	active = true
	set_current_round("round1")
	play_round()

func set_background_and_portrait():
	var background_image = encounter_node.background_image
	var background_texture = load(background_image)
	get_parent().get_node("Background").texture = background_texture
	set_character_random()

func _process(delta):
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
		get_node("SwipeAnimation2").play("Intro_transition")

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
	scene_index += 1
	set_background_and_portrait()
	get_node("SwipeAnimation").play("Intro_transition")

func _on_dialogue_option_1_pressed():
	if $TextBox/dialogue_option_1.text == current_round["choices"]["choice1"]["text"]:
		success_chance = current_round["choices"]["choice1"]["success_threshold"]
		if calcSuccess(success_chance):
			points += current_round["choices"]["choice1"]["points"]
			set_current_round(current_round["choices"]["choice1"]["success_goto"])
		else:
			points -= current_round["choices"]["choice1"]["points"]
			set_current_round(current_round["choices"]["choice1"]["failure_goto"])
		play_dice_sound_random()
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
		play_dice_sound_random()
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
		play_dice_sound_random()
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
		play_dice_sound_random()
		play_round()

func _on_CloseCreditsButton_pressed():
	CreditsScreen.hide()

func _on_ShowCredits_pressed():
	CreditsScreen.show() 

func _on_SwipeAnimation_animation_finished(anim_name):
	go_to_next_scene()

func _on_SwipeAnimation2_animation_finished(anim_name):
	scene_index += 1
	set_background_and_portrait()
	get_node("SwipeAnimation").play("Intro_transition")

func set_character_random():
	rng.randomize()
	var index = rng.randi_range(0,characters.size() - 1)
	var character_texture = load(characters[index])
	get_parent().get_node("Humanoutline").texture = character_texture

func play_dice_sound_random():
	rng.randomize()
	var index = rng.randi_range(0,dice_sounds.size() - 1)
	$DiceSound.stream = dice_sounds[index]
	$DiceSound.stream.loop = false
	$DiceSound.play()
