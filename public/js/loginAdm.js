document.getElementById('olho').addEventListener('click',function (){
    const inputSenha = document.getElementById("senha");
    const icone = document.getElementById("olho");
    if (inputSenha.type === "password"){
     inputSenha.type = "text"
     icone.classList.add('fa-eye')
     icone.classList.remove('fa-eye-slash')
    }else{
     inputSenha.type = "password"
     icone.classList.remove('fa-eye')
     icone.classList.add('fa-eye-slash')

    }

 })