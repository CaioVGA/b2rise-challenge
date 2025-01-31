// Challenge 1.1

function extractValues<ObjectType, Key extends keyof ObjectType>(
  sourceArray: ReadonlyArray<ObjectType>,
  targetProperty: Key
): Array<ObjectType[Key]> {
  return sourceArray.map((obj) => obj[targetProperty]);
}

const data = [
  { id: 1, name: "Alice" },
  { id: 2, name: "Bob" },
];

const result = extractValues(data, "name");
console.log(result);
