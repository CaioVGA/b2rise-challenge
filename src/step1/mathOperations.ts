// Challenge 1.2

type MathOperationsType = (valueA: number, valueB: number) => number;
type MathOperationsAvailables = "add" | "subtract" | "multiply" | "divide";

const MATH_OPERATIONS: Record<string, MathOperationsType> = {
  add: (valueA, valueB) => valueA + valueB,
  subtract: (valueA, valueB) => valueA - valueB,
  multiply: (valueA, valueB) => valueA * valueB,
  divide: (valueA, valueB) => {
    if (valueB == 0) throw new Error("Division by zero");
    else return valueA / valueB;
  },
};

function calculate(
  math_operation: MathOperationsAvailables,
  valueA: number,
  valueB: number
) {
  return MATH_OPERATIONS[math_operation](valueA, valueB);
}

console.log(`${10} + ${5} = ${calculate("add", 10, 5)}`);
console.log(`${10} - ${5} = ${calculate("subtract", 10, 5)}`);
console.log(`${10} * ${5} = ${calculate("multiply", 10, 5)}`);
console.log(`${10} / ${5} = ${calculate("divide", 10, 5)}`);
console.log(calculate("divide", 10, 0));
