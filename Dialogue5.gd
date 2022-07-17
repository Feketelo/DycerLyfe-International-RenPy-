extends Node


var DialoguePath = {
	"round1" : {
		"text" : "What's up? You just got me out of bed.",
		"choices" : {
			"choice1": {
				"text" : "Hello, how are you this evening?",
				"success_threshold" : 100,
				"success_goto": "round1_response1",
				"points": 0,
			},
			"choice2": {
				"text" : "Well you'll be sure glad I woke you up when I show you what I've got here!",
				"success_threshold" : 50,
				"success_goto": "round1_response2",
				"failure_goto": "round1_response3",
				"points": 1,
				
			},
			"choice3": {
				"text" : "It's still kind of early, what's your deal?",
				"success_threshold" : 25,
				"success_goto": "round1_response4",
				"failure_goto": "round1_response5",
				"points": 2,
			}
		}
	},
	"round1_response1" : {
		"text" : "Did you miss the part where I was in bed?",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response2" : {
		"text" : "Go on, I'm intrigued.",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response3" : {
		"text" : "I highly doubt it.",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response4" : {
		"text" : "I'm highly fatigued from a lack of good juices.",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response5" : {
		"text" : "I just met you, I don't feel comfortable sharing that.",
		"choices" : null,
		"goto": "round2"
	},
	"round2" : {
		"text" : "What do you want?",
		"choices" : {
			"choice1": {
				"text" : "I'm here with the DycerLyfe International brand 5-in-1 Ultimate Juicerator.",
				"success_threshold" : 75,
				"success_goto": "round2_response1",
				"failure_goto": "round2_response2",
				"points": 1,
			},
			"choice2": {
				"text" : "Tell me, how do you feel about juices?",
				"success_threshold" : 50,
				"success_goto": "round2_response3",
				"failure_goto": "round2_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "Got anything in your pockets that I can juice?",
				"success_threshold" : 25,
				"success_goto": "round2_response5",
				"failure_goto": "round2_response6",
				"points": 3,
			},
		}
	},
	"round2_response1" : {
		"text" : "Oh I think I've heard good things about DycerLyfe!",
		"choices" : null,
		"goto": "round3"
	},
	"round2_response2" : {
		"text" : "Isn't that the company recently involved in a massive wire fraud case for using fake wires in their kitchen goods?",
		"choices" : null,
		"goto": "round3"
	},
	"round2_response3" : {
		"text" : "I like juices.",
		"choices" : null,
		"goto": "round4"
	},
	"round2_response4" : {
		"text" : "I'm fairly indifferent to juices.",
		"choices" : null,
		"goto": "round4"
	},
	"round2_response5" : {
		"text" : "Sure, I've got my nightly comfort banana right here",
		"choices" : null,
		"goto": "round5"
	},
	"round2_response6" : {
		"text" : "...",
		"choices" : null,
		"goto": "failure"
	},
	"round3" : {
		"text" : "What's the Ultimate Juicerator?",
		"choices" : {
			"choice1": {
				"text" : "The 5-in-1 Ultimate Juicerator is a Juicerator, with 5 different major features!",
				"success_threshold" : 75,
				"success_goto": "round3_response1",
				"failure_goto": "round3_response2",
				"points": 1,
			},
			"choice2": {
				"text" : "A state-of-the-art juicer that gets all those vitamins and turns them into a juice!",
				"success_threshold" : 50,
				"success_goto": "round3_response3",
				"failure_goto": "round3_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "An overpriced juicer.",
				"success_threshold" : 25,
				"success_goto": "round3_response5",
				"failure_goto": "round3_response6",
				"points": 3,
			},
		}
	},
	"round3_response1": {
		"text": "That's sounds like a lot of features.",
		"choices": null,
		"goto": "success"
	},
	"round3_response2": {
		"text": "Are you not going to tell me any of the features?",
		"choices": null,
		"goto": "failure"
	},
	"round3_response3": {
		"text": "Hmm, I do love vitamins. Maybe that'd help me stay awake!",
		"choices": null,
		"goto": "success"
	},
	"round3_response4": {
		"text": "Sorry, I only like behind-the-times devices.",
		"choices": null,
		"goto": "failure"
	},
	"round3_response5": {
		"text": "That sounds neat to me. I love juices.",
		"choices": null,
		"goto": "success"
	},
	"round3_response6": {
		"text": "...",
		"choices": null,
		"goto": "failure"
	},
	"round4" : {
		"text" : "Why?",
		"choices" : {
			"choice1": {
				"text" : "I'm here with the 5-in-1 Ultimate Juicerator is a Juicerator, with 5 different major features!",
				"success_threshold" : 75,
				"success_goto": "round3_response1",
				"failure_goto": "round3_response2",
				"points": 1,
			},
			"choice2": {
				"text" : "What if I told you that you could have all the vitamin-filled juice you want, whenever you want?",
				"success_threshold" : 50,
				"success_goto": "round3_response3",
				"failure_goto": "round3_response4",
				"points": 2,	
				},
				"choice3": {
					"text" : "Look, do you want this juicer?",
					"success_threshold" : 25,
					"success_goto": "round3_response5",
					"failure_goto": "round3_response6",
					"points": 3,
				},
		}
	},
	"round4_response1": {
		"text": "Oh yeah? That sounds neat.",
		"choices": null,
		"goto": "success"
	},
	"round4_response2": {
		"text": "I'm not interested.",
		"choices": null,
		"goto": "failure"
	},
	"round4_response3": {
		"text": "I'd tell you, yes please!",
		"choices": null,
		"goto": "success"
	},
	"round4_response4": {
		"text": "I'd tell you, goodnight.",
		"choices": null,
		"goto": "failure"
	},
	"round4_response5": {
		"text": "....",
		"choices": null,
		"goto": "success"
	},
	"round4_response6": {
		"text": "...",
		"choices": null,
		"goto": "failure"
	},
	"round5" : {
		"text" : "You got a lot of juice out of that banana!",
		"choices" : {
			"choice1": {
				"text" : "That's right, and you could juice all the bananas you want if you purchase the DycerLyfe International brand 5-in-1 Ultimate Juicerator",
				"success_threshold" : 75,
				"success_goto": "round5_response1",
				"failure_goto": "round5_response2",
				"points": 1,
			},
			"choice2": {
				"text" : "And that's only one of the many things the DycerLyfe International brand 5-in-1 Ultimate Juicerator can juice! It can even juice live animals!",
				"success_threshold" : 50,
				"success_goto": "round5_response3",
				"failure_goto": "round5_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "Yes, now buy the juicer and go back to sleep",
				"success_threshold" : 25,
				"success_goto": "round5_response5",
				"failure_goto": "round5_response6",
				"points": 3,
			},
		}
	},
	"round5_response1": {
		"text": "Well let me tell you, I want to juice many bananas!",
		"choices": null,
		"goto": "success"
	},
	"round5_response2": {
		"text": "I think I prefer un-juiced bananas.",
		"choices": null,
		"goto": "failure"
	},
	"round5_response3": {
		"text": "Nice! I'd love some fresh fish juice.",
		"choices": null,
		"goto": "success"
	},
	"round5_response4": {
		"text": "You nearly had me, but that's too weird for me.",
		"choices": null,
		"goto": "failure"
	},
	"round5_response5": {
		"text": "Whatever.",
		"choices": null,
		"goto": "success"
	},
	"round5_response6": {
		"text": "I think I'll skip the first part.",
		"choices": null,
		"goto": "failure"
	},
	"success": {
		"text": "Sure, I'll buy one.",
		"choices": null,
		"goto": "end"
	},
	"failure": {
		"text": "Goodnight.",
		"choices": null,
		"goto": "end"
	}
}
