extends Node

var character_portrait = "res://Images/Customer_Models/Customer_Female_01.png"
var background_image = "res://Images/Door_Backgrounds/DoorBG_01.png"
var DialoguePath = {
	"round1" : {
		"text" : "What do you want?",
		"choices" : {
			"choice1": {
				"text" : "Hello, how are you this evening?",
				"success_threshold" : 100,
				"success_goto": "round1_response1",
				"failure_goto": "end",
				"points": 0,
			},
			"choice2": {
				"text" : "May I take a moment of your time?",
				"success_threshold" : 50,
				"success_goto": "round1_response2",
				"failure_goto": "round1_response3",
				"points": 1,
				
			},
			"choice3": {
				"text" : "Buy my juicer!",
				"success_threshold" : 5,
				"success_goto": "round1_response4",
				"failure_goto": "round1_response5",
				"points": 2,
			},
		}
	},
	"round1_response1" : {
		"text" : "I'm fine, thank you.",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response2" : {
		"text" : "Sure, I have a moment.",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response3" : {
		"text" : "Make it quick, I have dinner on the stove.",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response4" : {
		"text" : "Hell yeah, I am SO thirsty!",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response5" : {
		"text" : "What? No!",
		"choices" : null,
		"goto": "round2"
	},
	"round2" : {
		"text" : "What is it?",
		"choices" : {
			"choice1": {
				"text" : "I'm here with the renowned DycerLyfe International brand 5-in-1 Ultimate Juicerator. It has won 3 industry awards just this year!",
				"success_threshold" : 75,
				"success_goto": "round2_response1",
				"failure_goto": "round2_response2",
				"points": 1
			},
			"choice2": {
				"text" : "Let me demonstrate for you the juiceing power of the DycerLyfe International brand 5-in-1 Ultimate Juicerator on this fresh apple.",
				"success_threshold" : 50,
				"success_goto": "round2_response3",
				"failure_goto": "round2_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "Give me your shoe. I'm going to juice it. *Whirring noises*",
				"success_threshold" : 5,
				"success_goto": "round2_response5",
				"failure_goto": "round2_response6",
				"points": 3,
			},
		}
	},
	"round2_response1" : {
		"text" : "But what can the Juicerator do for me?",
		"choices" : null,
		"goto": "round3"
	},
	"round2_response2" : {
		"text" : "DycerLyfe? I don't know about all that.",
		"choices" : null,
		"goto": "round3"
	},
	"round2_response3" : {
		"text" : "That's some fresh-looking apple juice!",
		"choices" : null,
		"goto": "round4"
	},
	"round2_response4" : {
		"text" : "I'm allergic to apples.",
		"choices" : null,
		"goto": "round4"
	},
	"round2_response5" : {
		"text" : "I didn't know my shoe had so much juice!",
		"choices" : null,
		"goto": "round5"
	},
	"round2_response6" : {
		"text" : "I loved that shoe.",
		"choices" : null,
		"goto": "round5"
	},
	"round3" : {
		"text" : "I'm just a fruit seller!",
		"choices" : {
			"choice1": {
				"text" : "Sounds like there are lots of delicious options for you then!",
				"success_threshold" : 75,
				"success_goto": "round3_response1",
				"failure_goto": "round3_response2",
				"points": 1
			},
			"choice2": {
				"text" : "Have you thought about expanding your business into selling juices with those fruit?",
				"success_threshold" : 50,
				"success_goto": "round3_response3",
				"failure_goto": "round3_response4",
				"points": 2,
			},
			"choice3": {
				"text" : "Would you like to resell a Juicerator at your business for 15% markup? I really need this sale.",
				"success_threshold" : 25,
				"success_goto": "round3_response5",
				"failure_goto": "round3_response6",
				"points": 3,
			},
		}
	},
	"round3_response1" : {
		"text" : "You're right!	",
		"choices" : null,
		"goto": "success"
	},
	"round3_response2" : {
		"text" : "I would NEVER eat my own fruit.",
		"choices" : null,
		"goto": "failure"
	},
	"round3_response3" : {
		"text" : "That's a great idea!",
		"choices" : null,
		"goto": "success"
	},
	"round3_response4" : {
		"text" : "After what happened to my brother? No way!",
		"choices" : null,
		"goto": "failure"
	},
	"round3_response5" : {
		"text" : "Sure, that's a good deal for me.",
		"choices" : null,
		"goto": "success"
	},
	"round3_response6" : {
		"text" : "That's the worst sales pitch I've ever heard.",
		"choices" : null,
		"goto": "failure"
	},
	"round4" : {
		"text" : "What else can it juice?",
		"choices" : {
			"choice1": {
				"text" : "It can juice as many fruits as can fit in the Juiceration Chamber!",
				"success_threshold" : 75,
				"success_goto": "round4_response1",
				"failure_goto": "round4_response2",
				"points": 1
			},
			"choice2": {
				"text" : "What CAN'T it juice? I once juiced a whole chicken!",
				"success_threshold" : 50,
				"success_goto": "round4_response3",
				"failure_goto": "round4_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "It can juice dollars into more dollars.",
				"success_threshold" : 5,
				"success_goto": "round4_response5",
				"failure_goto": "round4_response6",
				"points": 3,
			},
		}
	},
	"round4_response1" : {
		"text" : "That's a lot of fruit!",
		"choices" : null,
		"goto": "success"
	},
	"round4_response2" : {
		"text" : "But all I own are watermelons and I can't use a knife!",
		"choices" : null,
		"goto": "failure"
	},
	"round4_response3" : {
		"text" : "Fresh chicken juice? That sounds incredible.",
		"choices" : null,
		"goto": "success"
	},
	"round4_response4" : {
		"text" : "I don't know how I feel about avian bones in my juice.",
		"choices" : null,
		"goto": "failure"
	},
	"round4_response5" : {
		"text" : "What? I love dollars!",
		"choices" : null,
		"goto": "success"
	},
	"round4_response6" : {
		"text" : "That doesn't make any sense. What?",
		"choices" : null,
		"goto": "failure"
	},
	"round5" : {
		"text" : "...",
		"choices" : {
			"choice1": {
				"text" : "You'd be surprised how much juice you could find if you purchased the DycerLyfe International brand 5-in-1 Ultimate Juicerator!",
				"success_threshold" : 75,
				"success_goto": "round5_response1",
				"failure_goto": "round5_response2",
				"points": 1
			},
			"choice2": {
				"text" : "And I think that was the less juicy foot!",
				"success_threshold" : 50,
				"success_goto": "round5_response3",
				"failure_goto": "round5_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "Now try drinking it.",
				"success_threshold" : 5,
				"success_goto": "round5_response5",
				"failure_goto": "round5_response6",
				"points": 3,
			},
		}
	},
	"round5_response1" : {
		"text" : "Incredible! I can't wait to juice my pants.",
		"choices" : null,
		"goto": "success"
	},
	"round5_response2" : {
		"text" : "I don't know how interested I am in other juices.",
		"choices" : null,
		"goto": "failure"
	},
	"round5_response3" : {
		"text" : "Oh, you flatter me!",
		"choices" : null,
		"goto": "success"
	},
	"round5_response4" : {
		"text" : "I'm very sensitive about my juicy feet.",
		"choices" : null,
		"goto": "failure"
	},
	"round5_response5" : {
		"text" : "I can taste all the naturally occurring nutrients!",
		"choices" : null,
		"goto": "success"
	},
	"round5_response6" : {
		"text" : "This tastes like shoe. And NOT in a good way.",
		"choices" : null,
		"goto": "failure"
	},
	"success": {
		"text" : "I would absolutely love a juicer!",
		"choices" : null,
		"goto": "end"
	},
	"failure": {
		"text" : "Get out!",
		"choices" : null,
		"goto": "end"
	}
}
