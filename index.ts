import { Command } from "commander";
import { generate } from "generate-password";
import clipboardy from "clipboardy";

const program = new Command();

program.argument("<number>", "Size of the password");
program.option(
  "--no-numbers",
  "If you don't want numbers in your passwordwant numbers in your passwords"
);
program.option("--no-show", "if you don't want to show it");

program.parse();

const options = program.opts();

const passSize = parseInt(program.args[0]);

if (isNaN(passSize)) {
  console.error("The size must be a number");
  process.exit(1);
}

const password = generate({
  length: passSize,
  numbers: options.numbers,
});

if (options.show) {
  console.log("Here is you password:");
  console.log(password);
}

clipboardy.write(password);
console.log("- The text has already been sent to your clipboard");
