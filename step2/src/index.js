const express = require("express");
const exec = require("child_process").exec;

const Chance = require("chance");
const chance = new Chance();

const app = express();

function generateStory() {
	const paragraphs = [];
	for (var i = 0; i < 3; i++) {
		paragraphs.push(chance.paragraph({ sentences: 5 }));
	}
	return paragraphs;
}

app.get("/", function(req, res) {
	res.set("Content-type", "application/json");
	res.send(JSON.stringify({ story: generateStory() }));
});

app.listen(80);


