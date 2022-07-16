extends Control

onready var text = get_parent().get_node("Dialogue").dialogue_1
onready var dialogue_options = get_tree().get_nodes_in_group("dialogue_options")
onready var StartScreen = get_parent().get_node("StartScreen")
var dialogue_index = 0
var rng = RandomNumberGenerator.new()
var finished
var active
var points = 0
var success_chance

func _ready():
	#load_dialogue()
	pass

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
			if button.text == "":
				button.visible = false
			else:
				button.visible = true
		load_dialogue()

func load_dialogue():
	if dialogue_index < text.size():
		active = true
		finished = false
		
		display_dialogue(text[dialogue_index]["Text"])
		
		var button_index = 0
		for button in dialogue_options:
			if button_index < text[dialogue_index]["Choices"].size():
				button.text = text[dialogue_index]["Choices"][button_index]["Text"]
			button_index += 1

	else:
		$TextBox.visible = false
		active = false
		finished = true

func display_dialogue(words):
	$TextBox.visible = true
	$TextBox/RichTextLabel.bbcode_text = words
	$TextBox/Label.text = "???"
		
	$TextBox/RichTextLabel.percent_visible = 0
	$TextBox/Tween.interpolate_property(
		$TextBox/RichTextLabel, "percent_visible", 0, 1, 2,
		Tween.TRANS_LINEAR, Tween.EASE_IN_OUT
	)
	$TextBox/Tween.start()

func calcSuccess(percent):
	rng.randi_range(0,100) <= percent
	
func nextDialogue(index, words):
	if dialogue_index < text[dialogue_index]["Choices"].size() and text[dialogue_index]["Choices"][index]["GoTo"]:
		dialogue_index = text[dialogue_index]["Choices"][index]["GoTo"] -2
	else:
		dialogue_index +=1
	display_dialogue(words)

func _on_Tween_tween_completed(object, key):
	finished = true

func _on_Button_pressed():
	StartScreen.hide()
	load_dialogue() 

func _on_dialogue_option_1_pressed():
	if $TextBox/dialogue_option_1.text == text[dialogue_index]["Choices"][0]["Text"]:
		success_chance = text[dialogue_index]["Choices"][0]["Success%"]
		if calcSuccess(success_chance):
			points += text[dialogue_index]["Choices"][0]["Points"]
			nextDialogue(0, text[dialogue_index]["Choices"][0]["SuccessText"])
		else:
			points -= text[dialogue_index]["Choices"][0]["Points"]
			nextDialogue(0, text[dialogue_index]["Choices"][0]["FailureText"])


func _on_dialogue_option_2_pressed():
	if $TextBox/dialogue_option_2.text == text[dialogue_index]["Choices"][1]["Text"]:
		success_chance = text[dialogue_index]["Choices"][1]["Success%"]
		if calcSuccess(success_chance):
			points += text[dialogue_index]["Choices"][1]["Points"]
			nextDialogue(1, text[dialogue_index]["Choices"][1]["SuccessText"])
		else:
			points -= text[dialogue_index]["Choices"][1]["Points"]
			nextDialogue(1, text[dialogue_index]["Choices"][1]["FailureText"])

func _on_dialogue_option_3_pressed():
	if $TextBox/dialogue_option_3.text == text[dialogue_index]["Choices"][2]["Text"]:
		success_chance = text[dialogue_index]["Choices"][2]["Success%"]
		if calcSuccess(success_chance):
			points += text[dialogue_index]["Choices"][2]["Points"]
			nextDialogue(2, text[dialogue_index]["Choices"][2]["SuccessText"])
		else:
			points -= text[dialogue_index]["Choices"][2]["Points"]
			nextDialogue(2, text[dialogue_index]["Choices"][2]["FailureText"])

func _on_dialogue_option_4_pressed():
	if $TextBox/dialogue_option_4.text == text[dialogue_index]["Choices"][3]["Text"]:
		success_chance = text[dialogue_index]["Choices"][3]["Success%"]
		if calcSuccess(success_chance):
			points += text[dialogue_index]["Choices"][3]["Points"]
			nextDialogue(3, text[dialogue_index]["Choices"][3]["SuccessText"])
		else:
			points -= text[dialogue_index]["Choices"][3]["Points"]
			nextDialogue(3, text[dialogue_index]["Choices"][3]["FailureText"])
