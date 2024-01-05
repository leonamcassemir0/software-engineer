const campo1 = document.querySelector("#campo1");
const campo2 = document.querySelector("#campo2");
const op = document.querySelector("#operacao");
let resultado = document.querySelector(".result");

op.addEventListener("change", calcular)
campo1.addEventListener("keyup", calcular);
campo2.addEventListener("keyup", calcular);

function calcular(){
    if (campo1.value === "" || campo2.value === ""){
        resultado.innerHTML = "Campo vazio!";
        if(campo1.value === "" && campo2.value === ""){
            resultado.innerHTML = "";
        }
    } else{
        const value1 = parseInt(campo1.value);
        const value2 = parseInt(campo2.value);
        const operacao = op.value;
    
        if(operacao === "Somar"){
            resultado.innerHTML= value1 + value2;
        }
        if(operacao === "Subtrair"){
            resultado.innerHTML= value1 - value2;
        }
        if(operacao === "Multiplicar"){
            resultado.innerHTML= value1 * value2;
        }
        if(operacao === "Dividir"){
            resultado.innerHTML= value1 / value2;
        }
    }
}