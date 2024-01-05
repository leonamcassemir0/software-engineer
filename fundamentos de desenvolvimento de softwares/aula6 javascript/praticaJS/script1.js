let botao = document.querySelector("#b1")
let quebrado = false;
botao.style.background="blue";
botao.style.color="white";


botao.addEventListener("mouseover", () => {
    if(!quebrado){
        botao.style.background="green";
        botao.style.color="white";
    } 
})
botao.addEventListener("mouseout", () => {
    if(!quebrado){
        botao.style.background="blue";
        botao.style.color="white";
    }
})

botao.addEventListener("click", () => {
    botao.style.background="red";
    botao.innerHTML = "Quebrado!";
    botao.style.color = "white";
    quebrado = true;
})