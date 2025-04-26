const modal = document.querySelector(".modal-denuncia")
const contmodal = document.querySelector(".container-modal-denuncia")
function abrirModalDenuncia(autor,tipo,denunciado,data,desc) {
    contmodal.style.display = "flex"
    document.getElementById('autor').textContent = autor;
    document.getElementById('tipo').textContent = tipo;
    document.getElementById('denunciado').textContent = denunciado;
    document.getElementById('data').textContent = data;
    document.getElementById('descmod').textContent = desc;


}


function fecharModalDenuncia() {
   
        contmodal.style.animation = "removerModalCont 500ms ease-in-out"
        modal.style.animation = "tiraModal 500ms ease-in-out"
        setTimeout(() => {
            contmodal.style.display = "none"
            contmodal.style.animation = "aparecerModalCont 300ms ease-in-out"
            modal.style.animation = "aparecerModal 800ms ease-in-out"

        }, 450);
    
}
 function fecharforaDenuncia(event){

    if (event.target === contmodal) {
                 fecharModalDenuncia()
        
          }
     }
