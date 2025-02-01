// Challenge 3.3

function dobrarNumerosPares(numeros: Array<number>): Array<number> {
  const isPar = (numero: number) => numero % 2 === 0;
  const dobrarNumero = (numero: number) => numero * 2;

  const lista_numeros = numeros.filter(isPar).map(dobrarNumero);
  return lista_numeros;
}

const lista_numeros_teste = [2, 3, 5, 6, 7, 8, 9, 10, 12, 14, 15, 17];

console.log(
  `Lista de números pares dobrados ${dobrarNumerosPares(lista_numeros_teste)}`
);
