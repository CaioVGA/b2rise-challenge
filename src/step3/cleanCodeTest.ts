// Challenge 3.1

interface Item {
  item_name: string;
  price: number;
}

function verifyExpensiveItems(item: Item, priceLimit: number) {
  return item.price > priceLimit;
}

function listExpensiveItems(items: Array<Item>, priceLimit = 100) {
  for (const item of items) {
    if (verifyExpensiveItems(item, priceLimit)) {
      console.log(`${item.item_name} is expensive`);
    }
  }
}

const items: Array<Item> = [
  { item_name: "PC", price: 1500 },
  { item_name: "Mouse", price: 25 },
  { item_name: "Teclado", price: 120 },
  { item_name: "Monitor", price: 300 },
  { item_name: "Pendrive", price: 20 },
];

listExpensiveItems(items);

// listExpensiveItems(items, 200);
