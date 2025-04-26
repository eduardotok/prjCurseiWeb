btntema = document.getElementById('btntema')
if(localStorage.getItem('tema') == 'escuro'){
    btntema.checked = true;
}

btntema.addEventListener('change', () => {
   
    const root = document.documentElement;

    if (localStorage.getItem('tema') == 'claro') {
        localStorage.setItem('tema', 'escuro');
        document.querySelectorAll('*').forEach(function (element) {
            element.style.transition = '500ms';
        });
        root.style.setProperty('--verde', '#05A4B6');
        root.style.setProperty('--fundo', '#1E1E1E');
        root.style.setProperty('--branco', '#2c2c2c');
        root.style.setProperty('--preto', '#fff');
        root.style.setProperty('--cinzaClaro', '#cccccc');
        root.style.setProperty('--cinzaEscuro', '#999999');
        root.style.setProperty('--vermelho', '#FF4C4C');
        root.style.setProperty('--borderInput', '#ffffff17');
    } else {
        document.querySelectorAll('*').forEach(function (element) {
            element.style.transition = '500ms';
        });
        root.style.setProperty('--verde', '#05A4B6');
        root.style.setProperty('--fundo', '#F6F6F6');
        root.style.setProperty('--branco', '#fff');
        root.style.setProperty('--preto', '#2c2c2c');
        root.style.setProperty('--cinzaClaro', '#898989');
        root.style.setProperty('--cinzaEscuro', '#616161');
        root.style.setProperty('--vermelho', '#CC0000');
        root.style.setProperty('--borderInput', '#00000017');

        localStorage.setItem('tema', 'claro');
    }

});

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