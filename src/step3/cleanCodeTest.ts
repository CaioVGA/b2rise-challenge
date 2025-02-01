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
      console.log(`${item} is expensive`);
    }
  }
}
