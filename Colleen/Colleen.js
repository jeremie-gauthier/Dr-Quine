/*
  This is the first comment
*/
function fn() {
	console.log(`/*
  This is the first comment
*/
${fn}\n`);
}

(function main() {
	/*
  This is the first comment
*/
	fn();
	console.log(`(${main})();`);
})();
