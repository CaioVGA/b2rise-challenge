// Challenge 1.3

function makeAllPositive(array_numbers: number[]): Array<number> {
  return array_numbers.map((number) => Math.abs(number));
}

const numbers = [-1, 2, -3, 4];
const results = makeAllPositive(numbers);

console.log(`Array original list: ${numbers}`);
console.log(`All positive numbers list: ${results}`);
