const fs = require("fs");
const { fork } = require("child_process");

const gen = 5;

(function main() {
	if (gen < 1) return;
	fs.writeFileSync(
		`Sully_${gen}.js`,
		`const fs = require("fs");\nconst { fork } = require("child_process");\n\nconst gen = ${
			gen - 1
		};\n\n(${main})();\n`
	);
	fork(`./Sully_${gen}.js`);
})();
