extends Node


var DialoguePath = {
	"round1" : {
		"text" : "What do you want?",
		"choices" : {
			"choice1": {
				"text" : "Hello, how are you this evening?",
				"success_threshold" : 100,
				"success_goto": "round1_response1",
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
				"text" : "I'm here with the renowned dycerLyfe International brand 5-in-1 Ultimate Juicerator. It has won 3 industry awards just this year!",
				"success_threshold" : 75,
				"success_goto": "round2_response1",
				"failure_goto": "round2_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "Let me demonstrate for you the juicing power of the dycerLyfe International brand 5-in-1 Ultimate Juicerator on this fresh apple.",
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
	}
	"round2_response6" : {
		"text" : "I loved that shoe.",
		"choices" : null,
		"goto": "round5"
	},
	"round3" : {
		"text" : "I've heard that juice is bad for you.",
		"choices" : {
			"choice1": {
				"text" : "I understand the hesitation, and so does dycerLyfe International. That's why we're offering a bonus package of Jooster Booster with your purchase, today only!",
				"success_threshold" : 75,
				"success_goto": "round3_response1",
				"failure_goto": "round3_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "But what if I told you that juice is actually quite good for you!",
				"success_threshold" : 50,
				"success_goto": "round3_response3",
				"failure_goto": "round3_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "That's just what Big Coffee wants you to believe!",
				"success_threshold" : 25,
				"success_goto": "round3_response5",
				"failure_goto": "round3_response6",
				"points": 3,
			},
		}
	},
	"round3_response1": {
		"text": "Now THAT sounds healthy!",
		"choices": null,
		"goto": "success"
	},
	"round3_response2": {
		"text": "Isn't that the product the FDA labeled as combustably toxic?",
		"choices": null,
		"goto": "failure"
	},
	"round3_response3": {
		"text": "I'd say I need to get me some more juice!",
		"choices": null,
		"goto": "success"
	},
	"round3_response4": {
		"text": "I'd say you're wrong and bad.",
		"choices": null,
		"goto": "failure"
	},
	"round3_response5": {
		"text": "You're right! I hate Big Coffee and their lies!",
		"choices": null,
		"goto": "success"
	},
	"round3_response6": {
		"text": "I've worked for Big Coffee all my life. I'll not hear such slander.",
		"choices": null,
		"goto": "failure"
	},
	"round4" : {
		"text" : "But what if I have a competing product?",
		"choices" : {
			"choice1": {
				"text" : "I guarantee that your competing product can't hold a candle to the 5-in-1 Ultimate Juicerator's five incredible functions!",
				"success_threshold" : 75,
				"success_goto": "round4_response1",
				"failure_goto": "round4_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "Does your current juicer have a lifetime no burn guarantee? DycerLyfe stands behind their products with a lifetime, burn free guarantee.",
				"success_threshold" : 50,
				"success_goto": "round4_response3",
				"failure_goto": "round4_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "Then throw that garbage away! In the trash!",
				"success_threshold" : 25,
				"success_goto": "round4_response5",
				"failure_goto": "round4_response6",
				"points": 3,
			},
		}
	},
	"round4_response1": {
		"text": "Five functions sure does sound like a lot.",
		"choices": null,
		"goto": "success"
	},
	"round4_response2": {
		"text": "I believe my competing product has six functions, but go off.",
		"choices": null,
		"goto": "failure"
	},
	"round4_response3": {
		"text": "That certainly is reassuring, this burn *gestures at scar on forearm* is from the last time my wife made juice.",
		"choices": null,
		"goto": "success"
	},
	"round4_response4": {
		"text": "Why in the hell would a juicer need a no burn guarantee?",
		"choices": null,
		"goto": "failure"
	},
	"round4_response5": {
		"text": "YOU'RE RIGHT! *throws juicer in trash can*",
		"choices": null,
		"goto": "success"
	},
	"round4_response6": {
		"text": "What? No? That was my anniversary gift for my cat.",
		"choices": null,
		"goto": "failure"
	},
	"round5" : {
		"text" : "How much juice do you get out of it?",
		"choices" : {
			"choice1": {
				"text" : "You'd be surprised how much juice you could find if you purchased the dycerLyfe International brand 5-in-1 Ultimate Juicerator!",
				"success_threshold" : 75,
				"success_goto": "round5_response1",
				"failure_goto": "round5_response2"
				"points": 1,
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
	"roun5_response1": {
		"text": "Incredible! I can't wait to juice my pants.",
		"choices": null,
		"goto": "success"
	},
	"round5_response2": {
		"text": "I don't know how interested I am in other juices.",
		"choices": null,
		"goto": "failure"
	},
	"round5_response3": {
		"text": "Oh, you flatter me!",
		"choices": null,
		"goto": "success"
	},
	"round5_response4": {
		"text": "I'm very sensitive about my juicy feet.",
		"choices": null,
		"goto": "failure"
	},
	"round5_response5": {
		"text": "I can taste all the naturally occurring nutrients!",
		"choices": null,
		"goto": "success"
	},
	"round5_response6": {
		"text": "This tastes like shoe. And NOT in a good way.",
		"choices": null,
		"goto": "failure"
	},
	"success": {
		"text": "",
		"choices": null,
		"goto": "end"
	},
	"failure": {
		"text": "",
		"choices": null,
		"goto": "end"
	}
}
