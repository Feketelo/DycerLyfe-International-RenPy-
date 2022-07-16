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
                "text" : "Let me demonstrate for you the juiceing power of the dycerLyfe International brand 5-in-1 Ultimate Juicerator on this fresh apple.",
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
    }
}