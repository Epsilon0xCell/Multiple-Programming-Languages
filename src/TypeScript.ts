// comment here; love the double-slash java styles
var text:string = "ola amigo";
console.log(text);

// I build each row in a string first and print it once. If I printed
// star by star, every star would land on its own line instead of
// forming a row.
for (let i: number = 0; i < 5; ++i) {
  let line: string = "";
  // The inner test is j <= i, so row i gets i + 1 stars. With j < i
  // the first row would print nothing at all.
  for (let j: number = 0; j <= i; ++j) {
    line += "*";
  }
  console.log(line);
}
