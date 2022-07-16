extends Node


var DialoguePath = {
	"round1" : {
		"text" : "Are you the pizza delivery?",
		"choices" : {
			"choice1": {
				"text" : "No, sorry. How are you this evening?",
				"success_threshold" : 100,
				"success_goto": "round1_response1",
				"points": 0,
			},
			"choice2": {
				"text" : "I'm not, but I have something better than pizza if you're interested.",
				"success_threshold" : 50,
				"success_goto": "round1_response2",
				"failure_goto": "round1_response3",
				"points": 1,
				
			},
			"choice3": {
				"text" : "No, but I have your pizza and you'll need to get through me if you ever want to see it.",
				"success_threshold" : 50,
				"success_goto": "round1_response4",
				"failure_goto": "round1_response5",
				"points": 0,
			},
		}
	},
	"round1_response1" : {
		"text" : "Uh, I guess I'm alright. Hungry.",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response2" : {
		"text" : "I am very interested.",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response3" : {
		"text" : "Nothing can dissuade me from my love of pizza, but go ahead.",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response4" : {
		"text" : "Please, I'll do anything for that pizza!",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response5" : {
		"text" : "If you harm even a single pepperoni on that pizza, you'll regret it deeply.",
		"choices" : null,
		"goto": "round2"
	},
	"round2" : {
		"text" : "Are you selling something?",
		"choices" : {
			"choice1": {
				"text" : "I'm glad you asked! I'm here today with the DycerLyfe International brand 5-in-1 Ultimate Juicerator. Do you like juices?",
				"success_threshold" : 75,
				"success_goto": "round2_response1",
				"failure_goto": "round2_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "Let me demonstrate for you the juicing power of the DycerLyfe International brand 5-in-1 Ultimate Juicerator on this fresh apple.",
				"success_threshold" : 50,
				"success_goto": "round2_response3",
				"failure_goto": "round2_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "Watch me juice this pizza. *whirring noises*",
				"success_threshold" : 25,
				"success_goto": "round2_response5",
				"failure_goto": "round2_response6",
				"points": 3,
			},
		}
	},
	"round2_response1" : {
		"text" : "Yeah, I like juices!",
		"choices" : null,
		"goto": "round3"
	},
	"round2_response2" : {
		"text" : "I'm honestly indifferent to juices.",
		"choices" : null,
		"goto": "round3"
	},
	"round2_response3" : {
		"text" : "Dang, that's some tasty looking juice.",
		"choices" : null,
		"goto": "round4"
	},
	"round2_response4" : {
		"text" : "That juice looks chunky, but I am honestly hungry enough to try it.",
		"choices" : null,
		"goto": "round4"
	},
	"round2_response5" : {
		"text" : "Incredible! My problem with pizza is how solid it usually is.",
		"choices" : null,
		"goto": "round5"
	}
	"round2_response6" : {
		"text" : "Was that my pizza?",
		"choices" : null,
		"goto": "round5"
	},
	"round3" : {
		"text" : "What's special about the Juicerator?",
		"choices" : {
			"choice1": {
				"text" : "How high the vitamin count is!",
				"success_threshold" : 75,
				"success_goto": "round3_response1",
				"failure_goto": "round3_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "How high the viscosity is!",
				"success_threshold" : 50,
				"success_goto": "round3_response3",
				"failure_goto": "round3_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "How high the price is!",
				"success_threshold" : 25,
				"success_goto": "round3_response5",
				"failure_goto": "round3_response6",
				"points": 3,
			},
		}
	},
	"round3_response1": {
		"text": "Vitamins? I love vitamins.",
		"choices": null,
		"goto": "success"
	},
	"round3_response2": {
		"text": "My doctor says that I need lower vitamin foods.",
		"choices": null,
		"goto": "failure"
	},
	"round3_response3": {
		"text": "Mmm, I do love a viscous juice.",
		"choices": null,
		"goto": "success"
	},
	"round3_response4": {
		"text": "I'm sorry, I'm not really looking for viscious juices.",
		"choices": null,
		"goto": "failure"
	},
	"round3_response5": {
		"text": "Oh! I definitely think that expensive things are better.",
		"choices": null,
		"goto": "success"
	},
	"round3_response6": {
		"text": "You understand why that was a bad sales pitch, right?",
		"choices": null,
		"goto": "failure"
	},
	"round4" : {
		"text" : "Can I have a sip?",
		"choices" : {
			"choice1": {
				"text" : "Absolutely, please try it.",
				"success_threshold" : 75,
				"success_goto": "round4_response1",
				"failure_goto": "round4_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "Please, allow me to demonstrate how to properly drink this juice.",
				"success_threshold" : 50,
				"success_goto": "round4_response3",
				"failure_goto": "round4_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "No.",
				"success_threshold" : 25,
				"success_goto": "round4_response5",
				"failure_goto": "round4_response6",
				"points": 3,
			},
		}
	},
	"round4_response1": {
		"text": "Wow! This is delicious and has made me forget all about pizza.",
		"choices": null,
		"goto": "success"
	},
	"round4_response2": {
		"text": "Why does this taste like a shoe?",
		"choices": null,
		"goto": "failure"
	},
	"round4_response3": {
		"text": "Somehow watching you drink it is refreshing me!",
		"choices": null,
		"goto": "success"
	},
	"round4_response4": {
		"text": "That's just cruel. I'm so hungry.",
		"choices": null,
		"goto": "failure"
	},
	"round4_response5": {
		"text": "Oh, dang. Guess I'll have to buy a Juicerator if I want some juice.",
		"choices": null,
		"goto": "success"
	},
	"round4_response6": {
		"text": "Okay, jerk.",
		"choices": null,
		"goto": "failure"
	},
	"round5" : {
		"text" : "You have to give me that pizza juice.",
		"choices" : {
			"choice1": {
				"text" : "Of course, it's only fair.",
				"success_threshold" : 75,
				"success_goto": "round5_response1",
				"failure_goto": "round5_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "No I don't.",
				"success_threshold" : 50,
				"success_goto": "round5_response3",
				"failure_goto": "round5_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "Not until you buy a DycerLyfe International brand 5-in-1 Ultimate Juicerator.",
				"success_threshold" : 5,
				"success_goto": "round5_response5",
				"failure_goto": "round5_response6",
				"points": 3,
			},
		}
	},
	"round5_response1": {
		"text": "This has incredible umami flavor!",
		"choices": null,
		"goto": "success"
	},
	"round5_response2": {
		"text": "This has taken everything I love about pizza and perverted it beyond all redemption. I hate you and now I also hate pizza.",
		"choices": null,
		"goto": "failure"
	},
	"round5_response3": {
		"text": "Dang, you're right!",
		"choices": null,
		"goto": "success"
	},
	"round5_response4": {
		"text": "...",
		"choices": null,
		"goto": "failure"
	},
	"round5_response5": {
		"text": "Fine, you got me.",
		"choices": null,
		"goto": "success"
	},
	"round5_response6": {
		"text": "I will never give in to you.",
		"choices": null,
		"goto": "failure"
	},
	"success": {
		"text": "Okay, I'll take one.",
		"choices": null,
		"goto": "end"
	},
	"failure": {
		"text": "*slowly backs away*",
		"choices": null,
		"goto": "end"
	}
}
