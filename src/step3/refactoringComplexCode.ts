// Challenge 3.2

type Product = {
  price: number;
  isPremium: boolean;
};

function defineDiscount(product: Product): number {
  if (product.isPremium) {
    return product.price > 100 ? 0.8 : 0.9;
  } else {
    return product.price > 100 ? 0.9 : 1;
  }
}

function calculateDiscount(product: Product): number {
  const discount = defineDiscount(product);
  return product.price * discount;
}

// function calculateTotalPrice(price: number, isPremium: boolean): number {
//   const discount = calculateDiscount(price, isPremium);
//   return price - price * discount;
// }

const product_premium1: Product = { price: 110, isPremium: true };
const product_premium2: Product = { price: 80, isPremium: true };
const product_standard1: Product = { price: 250, isPremium: false };
const product_standard2: Product = { price: 50, isPremium: false };

console.log(
  `Premium, preço > 100: desconto é ${calculateDiscount(product_premium1)}`
);
console.log(
  `Premium, preço <= 100: o desconto é ${calculateDiscount(product_premium2)}`
);
console.log(
  `Não premium, preço > 100: o desconto é ${calculateDiscount(product_standard1)}`
);
console.log(
  `Não premium, preço <= 100: o desconto é ${calculateDiscount(product_standard2)}`
);
