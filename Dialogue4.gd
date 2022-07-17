extends Node


var DialoguePath = {
	"round1" : {
		"text" : "",
		"choices" : {
			"choice1": {
				"text" : "",
				"success_threshold" : 100,
				"success_goto": "round1_response1",
				"points": 0,
			},
			"choice2": {
				"text" : ".",
				"success_threshold" : 50,
				"success_goto": "round1_response2",
				"failure_goto": "round1_response3",
				"points": 1,
				
			},
			"choice3": {
				"text" : "",
				"success_threshold" : 50,
				"success_goto": "round1_response4",
				"failure_goto": "round1_response5",
				"points": 0,
			},
		}
	},
	"round1_response1" : {
		"text" : "",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response2" : {
		"text" : "",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response3" : {
		"text" : "",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response4" : {
		"text" : "",
		"choices" : null,
		"goto": "round2"
	},
	"round1_response5" : {
		"text" : "",
		"choices" : null,
		"goto": "round2"
	},
	"round2" : {
		"text" : "",
		"choices" : {
			"choice1": {
				"text" : "",
				"success_threshold" : 75,
				"success_goto": "round2_response1",
				"failure_goto": "round2_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "",
				"success_threshold" : 50,
				"success_goto": "round2_response3",
				"failure_goto": "round2_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "",
				"success_threshold" : 25,
				"success_goto": "round2_response5",
				"failure_goto": "round2_response6",
				"points": 3,
			},
		}
	},
	"round2_response1" : {
		"text" : "",
		"choices" : null,
		"goto": "round3"
	},
	"round2_response2" : {
		"text" : "",
		"choices" : null,
		"goto": "round3"
	},
	"round2_response3" : {
		"text" : "",
		"choices" : null,
		"goto": "round4"
	},
	"round2_response4" : {
		"text" : "",
		"choices" : null,
		"goto": "round4"
	},
	"round2_response5" : {
		"text" : "",
		"choices" : null,
		"goto": "round5"
	}
	"round2_response6" : {
		"text" : "",
		"choices" : null,
		"goto": "round5"
	},
	"round3" : {
		"text" : "",
		"choices" : {
			"choice1": {
				"text" : "",
				"success_threshold" : 75,
				"success_goto": "round3_response1",
				"failure_goto": "round3_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "",
				"success_threshold" : 50,
				"success_goto": "round3_response3",
				"failure_goto": "round3_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "",
				"success_threshold" : 25,
				"success_goto": "round3_response5",
				"failure_goto": "round3_response6",
				"points": 3,
			},
		}
	},
	"round3_response1": {
		"text": "",
		"choices": null,
		"goto": "success"
	},
	"round3_response2": {
		"text": "",
		"choices": null,
		"goto": "failure"
	},
	"round3_response3": {
		"text": "",
		"choices": null,
		"goto": "success"
	},
	"round3_response4": {
		"text": "",
		"choices": null,
		"goto": "failure"
	},
	"round3_response5": {
		"text": "",
		"choices": null,
		"goto": "success"
	},
	"round3_response6": {
		"text": "",
		"choices": null,
		"goto": "failure"
	},
	"round4" : {
		"text" : "",
		"choices" : {
			"choice1": {
				"text" : "",
				"success_threshold" : 75,
				"success_goto": "round4_response1",
				"failure_goto": "round4_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "",
				"success_threshold" : 50,
				"success_goto": "round4_response3",
				"failure_goto": "round4_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "",
				"success_threshold" : 25,
				"success_goto": "round4_response5",
				"failure_goto": "round4_response6",
				"points": 3,
			},
		}
	},
	"round4_response1": {
		"text": "",
		"choices": null,
		"goto": "success"
	},
	"round4_response2": {
		"text": "",
		"choices": null,
		"goto": "failure"
	},
	"round4_response3": {
		"text": "",
		"choices": null,
		"goto": "success"
	},
	"round4_response4": {
		"text": "",
		"choices": null,
		"goto": "failure"
	},
	"round4_response5": {
		"text": "",
		"choices": null,
		"goto": "success"
	},
	"round4_response6": {
		"text": "",
		"choices": null,
		"goto": "failure"
	},
	"round5" : {
		"text" : "",
		"choices" : {
			"choice1": {
				"text" : "",
				"success_threshold" : 75,
				"success_goto": "round5_response1",
				"failure_goto": "round5_response2"
				"points": 1,
			},
			"choice2": {
				"text" : "",
				"success_threshold" : 50,
				"success_goto": "round5_response3",
				"failure_goto": "round5_response4",
				"points": 2,
				
			},
			"choice3": {
				"text" : "",
				"success_threshold" : 5,
				"success_goto": "round5_response5",
				"failure_goto": "round5_response6",
				"points": 3,
			},
		}
	},
	"round5_response1": {
		"text": "",
		"choices": null,
		"goto": "success"
	},
	"round5_response2": {
		"text": "",
		"choices": null,
		"goto": "failure"
	},
	"round5_response3": {
		"text": "",
		"choices": null,
		"goto": "success"
	},
	"round5_response4": {
		"text": "",
		"choices": null,
		"goto": "failure"
	},
	"round5_response5": {
		"text": "",
		"choices": null,
		"goto": "success"
	},
	"round5_response6": {
		"text": "",
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
