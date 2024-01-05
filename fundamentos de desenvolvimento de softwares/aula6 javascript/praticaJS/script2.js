const campo1 = document.querySelector("#campo1")
const campo2 = document.querySelector("#campo2");
const op = document.querySelector("#operacao");
const botao = document.querySelector("#igual");
let resultado = document.querySelector(".result");

botao.addEventListener("click", calcular);

function calcular(){
    const valor1 = parseInt(campo1.value);
    const valor2 = parseInt(campo2.value);
    const operacao = op.value;

    if(operacao === "Somar"){
        resultado.innerHTML= valor1 + valor2;
    }
    if(operacao === "Subtrair"){
        resultado.innerHTML= valor1 - valor2;
    }
    if(operacao === "Multiplicar"){
        resultado.innerHTML= valor1 * valor2;
    }
    if(operacao === "Dividir"){
        resultado.innerHTML= valor1 / valor2;
    }
}
