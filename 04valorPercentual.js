const estados = [
    {
        estado: 'SP' , valor: 67836.43
    },
    {
        estado: 'RJ' , valor: 36678.66
    },
    {
        estado: 'MG' , valor: 29229.88
    },
    {
        estado: 'ES' , valor: 27165.48
    },
    {
        estado: 'Outros' , valor: 19849.53
    }
];

let valorEstadoAtual = 0;
let valortotal = 0;

for(let i =0; i < estados.length; i++){//PEGANDO VALAOR TOTAL DOS ESTADOS
    valorEstadoAtual = estados[i].valor;
    valortotal = valortotal + valorEstadoAtual
}

for(let i =0; i < estados.length; i++){
    valorEstadoAtual = estados[i].valor;
   let percentualEstado = (valorEstadoAtual/valortotal) * 100;
   console.log(`\n ${estados[i].estado} teve um percentual de ${percentualEstado.toFixed(0)}% referente ao valor total que foi R$ ${valortotal} .` )
}
