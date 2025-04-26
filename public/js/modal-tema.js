const containerModalTema = document.getElementById('containerModalTema')
const boxModal = document.getElementById('boxModalTema')

function abrirModalTema(){

    containerModalTema.classList.add('modal-ativo')
    containerModalTema.classList.remove('modal-oculto')
    console.log(containerModalTema)

}

function fecharModalTema(alvo){
    if(alvo.target === containerModalTema){
        containerModalTema.classList.remove('modal-ativo')
        containerModalTema.classList.add('modal-oculto')
    }else if(alvo.target === document.getElementById('botao-fechar-tema')){
        containerModalTema.classList.remove('modal-ativo')
        containerModalTema.classList.add('modal-oculto')
    }
    
    console.log(containerModalTema)
}