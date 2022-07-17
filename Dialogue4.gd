extends Node


var DialoguePath = {
	"round1" : {
		"text" : "Hi there!",
		"choices" : {
			"choice1": {
				"text" : "Hello, how are you this evening?",
				"success_threshold" : 100,
				"success_goto": "round1_response1",
				"points": 0,
			},
			"choice2": {
				"text" : "That's the friendliest greeting I've had all night!",
				"success_threshold" : 75,
				"success_goto": "round1_response2",
				"failure_goto": "round1_response3",
				"points": 1,
				
			},
			"choice3": {
				"text" : "Wait, are you trying to sell ME something?",
				"success_threshold" : 50,
				"success_goto": "round1_response4",
				"failure_goto": "round1_response5",
				"points": 0,
			},
		}
	},
	"round1_response1" : {
		"text" : "I'm wonderful, thanks to all the fresh juice I'm drinking these days.",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response2" : {
		"text" : "Well you'd be just as friendly if you drank a tall glass of fresh juice!",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response3" : {
		"text" : "Maybe it's your face?",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response4" : {
		"text" : "Haha, that's so funny!",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response5" : {
		"text" : "No?",
		"choices" : null,
		"goto": "round2"
	},
	"round2" : {
		"text" : "So, have you heard about all the wonderful features of the DycerLyfe International brand 5-in-1 Ultimate Juicerator?",
		"choices" : {
			"choice1": {
				"text" : "Oh, you already have one?",
				"success_threshold" : 75,
				"success_goto": "round2_response1",
				"failure_goto": "round2_response2",
				"points": 1,
			},
			"choice2": {
				"text" : "Please tell me about one of these features.",
				"success_threshold" : 50,
				"success_goto": "round2_response3",
				"failure_goto": "round2_response4",
				"points": 1,
				
			},
			"choice3": {
				"text" : "You couldn't tell me anything I don't already know.",
				"success_threshold" : 100,
				"success_goto": "round2_response5",
				"points": 0,
			},
		}
	},
	"round2_response1" : {
		"text" : "I do and it has changed my life!",
		"choices" : null,
		"goto": "round3"
	},
	"round2_response2" : {
		"text" : "Ugh, so you're just here to sell me one?",
		"choices" : null,
		"goto": "round3"
	},
	"round2_response3" : {
		"text" : "The DycerLyfe International brand 5-in-1 Ultimate Juicerator can juice up to 3 different kinds of fruits at once!",
		"choices" : null,
		"goto": "bad_end"
	},
	"round2_response4" : {
		"text" : "The DycerLyfe International brand 5-in-1 Ultimate Juicerator can tell your cellphone when it's done juicing!",
		"choices" : null,
		"goto": "bad_end"
	},
	"round2_response5" : {
		"text" : "Sounds like we've got ourselves a trivia battle!",
		"choices" : null,
		"goto": "round5"
	},
	"round3" : {
		"text" : "Look, I respect what you're doing but I've already got a Juicerator.",
		"choices" : {
			"choice1": {
				"text" : "What will happen to you when it breaks?",
				"success_threshold" : 50,
				"success_goto": "round3_response1",
				"failure_goto": "round3_response2",
				"points": 1,
			},
			"choice2": {
				"text" : "Just think about what you could accomplish with another Juicerator!",
				"success_threshold" : 50,
				"success_goto": "round3_response3",
				"failure_goto": "round3_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "Have you thought about becoming a distributor? You just need a second one to get started.",
				"success_threshold" : 25,
				"success_goto": "round3_response5",
				"failure_goto": "round3_response6",
				"points": 3,
			},
		}
	},
	"round3_response1": {
		"text": "I wouldn't know what to do with myself!",
		"choices": null,
		"goto": "success"
	},
	"round3_response2": {
		"text": "Didn't it come with a 50-year break-free guarantee?",
		"choices": null,
		"goto": "failure"
	},
	"round3_response3": {
		"text": "You're right! That's like 10 features instead of 5!",
		"choices": null,
		"goto": "success"
	},
	"round3_response4": {
		"text": "But, I live alone.",
		"choices": null,
		"goto": "failure"
	},
	"round3_response5": {
		"text": "That would really help me get out of debt from buying too many herbal supplements!",
		"choices": null,
		"goto": "success"
	},
	"round3_response6": {
		"text": "Sorry, I've already got a business selling monkey pictures.",
		"choices": null,
		"goto": "failure"
	},
	"round5" : {
		"text" : "How many fruits can the DycerLyfe International brand 5-in-1 Ultimate Juicerator juice at the same time?",
		"choices" : {
			"choice1": {
				"text" : "3",
				"success_threshold" : 100,
				"success_goto": "round5_response1",
				"points": 1,
			},
			"choice2": {
				"text" : "7",
				"success_threshold" : 100,
				"success_goto": "round5_response3",
				"points": 1,
				
			},
			"choice3": {
				"text" : "21",
				"success_threshold" : 100,
				"success_goto": "round5_response5",
				"points": 1,
			},
		}
	},
	"round5_response1": {
		"text": "Correct!",
		"choices": null,
		"goto": "round6"
	},
	"round5_response2": {
		"text": "Incorrect!",
		"choices": null,
		"goto": "trivia_end2"
	},
	"round5_response3": {
		"text": "Incorrect!",
		"choices": null,
		"goto": "trivia_end2"
	},
	"round6" : {
		"text" : "What can the DycerLyfe International brand 5-in-1 Ultimate Juicerator do when it's done juicing?",
		"choices" : {
			"choice1": {
				"text" : "Emit a loud beep",
				"success_threshold" : 100,
				"success_goto": "round5_response1",
				"points": 0,
			},
			"choice2": {
				"text" : "Scream",
				"success_threshold" : 100,
				"success_goto": "round5_response2",
				"points": 0,
				
			},
			"choice3": {
				"text" : "Tell your cellphone",
				"success_threshold" : 100,
				"success_goto": "round5_response3",
				"points": 2,
			},
		}
	},
	"round6_response1": {
		"text": "Incorrect!",
		"choices": null,
		"goto": "trivia_end2"
	},
	"round6_response2": {
		"text": "Incorrect!",
		"choices": null,
		"goto": "trivia_end2"
	},
	"round6_response3": {
		"text": "Correct!",
		"choices": null,
		"goto": "trivia_end1"
	},
	"trivia_end1": {
		"text":"Gosh, this trivia battle made me thirsty for even more juice!",
		"choices": null,
		"goto": "success"
	},
	"trivia_end2": {
		"text":"Well that was fun, but I've already got a Juicerator.",
		"choices": null,
		"goto": "failure"
	},
	"bad_end": {
		"text":"Well, I can see you're selling Juicerators, so it's kind of weird that you asked me that.",
		"choices": null,
		"goto": "failure"
	},
	"success": {
		"text": "I'd be happy to buy another one.",
		"choices": null,
		"goto": "end"
	},
	"failure": {
		"text": "I don't think I need another one. Goodbye.",
		"choices": null,
		"goto": "end"
	}
}
