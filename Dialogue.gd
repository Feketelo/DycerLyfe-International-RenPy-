extends Node

var encounter_1 = [
	{
		"Text": "What do you want?",
		"Choices": [
			{	"Text": "Hello, how are you this evening?",
				"Success%": 100,
				"SuccessText": "I'm fine, thank you.",
				"FailureText": "what",
				"Points": 0,
				"GoTo": 2
			},
			{	"Text": "May I take a moment of your time?",
				"Success%": 50,
				"SuccessText": "Sure, I have a moment.",
				"FailureText": "Make it quick, I have dinner on the stove.",
				"Points": 1,
				"GoTo": 2
			},
			{	"Text": "Buy my juicer!",
				"Success%": 5,
				"SuccessText": "Hell yeah, I am SO thirsty!",
				"FailureText": "What? No!",
				"Points": 2,
				"GoTo": 2
			 }
		]
	},
	{
		"Text": "What is it?",
		"Choices": [
			{
				"Text": "I'm here with the renowned dycerLyfe International brand 5-in-1 Ultimate Juicerator. It has won 3 industry awards just this year!",
				"Success%": 75,
				"SuccessText": "But what can the Juicerator do for me?",
				"FailureText": "DycerLyfe? I don't know about all that.",
				"Points": 1,
				"GoTo": 3
			},
			{	"Text": "Let me demonstrate for you the juiceing power of the dycerLyfe International brand 5-in-1 Ultimate Juicerator on this fresh apple.",
				"Success%": 50,
				"SuccessText": "That's some fresh-looking apple juice!",
				"FailureText": "I'm allergic to apples.",
				"Points": 2,
				"GoTo": 4
			 },
			 {	"Text": "Give me your shoe. I'm going to juice it. *Whirring noises*",
				"Success%": 5,
				"SuccessText": "I didn't know my shoe had so much juice!",
				"FailureText": "I loved that shoe.",
				"Points": 3,
				"GoTo": 5
			 }
		]
	},
	{
		"Text": "I'm just a fruit seller!",
		"Choices": [
			{
				"Text": "Sounds like there are lots of delicious options for you then!",
				"Success%": 75,
				"SuccessText": "You're right!",
				"FailureText": "I would NEVER eat my own fruit.",
				"Points": 1
			},
			{	"Text": "Have you thought about expanding your business into selling juices with those fruit?",
				"Success%": 50,
				"SuccessText": "That's a great idea!",
				"FailureText": "After what happened to my brother? No way!",
				"Points": 2,
			 },
			{	"Text": "Would you like to resell a Juicerator at your business for 15% markup? I really need this sale.",
				"Success%": 25,
				"SuccessText": "Sure, that's a good deal for me.",
				"FailureText": "That's the worst sales pitch I've ever heard.",
				"Points": 3,
			}
		]
	},
	{
		"Text": "What else can it juice?",
		"Choices": [
			{
				"Text": "It can juice as many fruits as can fit in the Juiceration Chamber!",
				"Success%": 75,
				"SuccessText": "That's a lot of fruit!",
				"FailureText": "But all I own are watermelons and I can't use a knife!",
				"Points": 1
			},
			{	"Text": "What CAN'T it juice? I once juiced a whole chicken!",
				"Success%": 50,
				"SuccessText": "Fresh chicken juice? That sounds incredible.",
				"FailureText": "I don't know how I feel about avian bones in my juice.",
				"Points": 2,
			 },
			{	"Text": "It can juice dollars into more dollars.",
				"Success%": 5,
				"SuccessText": "What? I love dollars!",
				"FailureText": "That doesn't make any sense. What?",
				"Points": 3,
			}
		]
	},
	{
		"Text": "",
		"Choices": [
			{
				"Text": "You'd be surprised how much juice you could find if you purchased the dycerLyfe International brand 5-in-1 Ultimate Juicerator!",
				"Success%": 75,
				"SuccessText": "Incredible! I can't wait to juice my pants.",
				"FailureText": "I don't know how interested I am in other juices.",
				"Points": 1
			},
			{	"Text": "And I think that was the less juicy foot!",
				"Success%": 50,
				"SuccessText": "Oh, you flatter me!",
				"FailureText": "I'm very sensitive about my juicy feet.",
				"Points": 2,
			 },
			{	"Text": "Now try drinking it.",
				"Success%":5,
				"SuccessText": "I can taste all the naturally occurring nutrients!",
				"FailureText": "This tastes like shoe. And NOT in a good way.",
				"Points": 3,
			}
		]
	}

]

var success_dialogue = [
	{
		"Text": "I would absolutely love a juicer!",
		"Choices": ["","","",""]
	}
]

var failure_dialogue = [
	{
		"Text": "Get out!",
		"Choices": ["","","",""]
	}
]
