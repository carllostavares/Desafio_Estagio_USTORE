
const leia = require('prompt-sync')();

console.log("Digite uma palavra: ")
const palavra =leia('');
let novaPalavra = '';

for (let i = palavra.length - 1; i >= 0; i--) {
  novaPalavra = novaPalavra +  palavra[i];
}
   
console.log(novaPalavra)


