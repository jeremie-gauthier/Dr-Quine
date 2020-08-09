const fs = require("fs");
/*
  Simple comment
*/

const S = () => `const fs = require("fs");
/*
  Simple comment
*/\n`;
const PRINT = (f) =>
	fs.writeFileSync(
		f,
		`${S()}\nconst S = ${S};\nconst PRINT = ${PRINT};\nconst FT = ${FT};\n\nFT();\n`
	);
const FT = () => {
	PRINT("Grace_kid.js");
};

FT();
