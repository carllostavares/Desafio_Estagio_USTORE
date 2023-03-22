//sera necessario executar " npm install pormpt-sync " no terminal antes de axecutar o programa.

const numRecebido = require('prompt-sync')();

 function fibonacci() {
  let num = parseInt(numRecebido("Digite um número:"));
  let a = 0, b = 1, c = 1;
  while (c < num) {
    c = a + b;
    a = b;
    b = c;
  }
let achou = false;
let i = 0;


while(!achou){
  
  if (c === num) {
    achou = true;
    console.log(`O ${num} pertence à sequência de Fibonacci.`);
  } else {
    console.log(num + " não pertence à sequência de Fibonacci.");
    achou = true;

  }
}
i++;
}

fibonacci();