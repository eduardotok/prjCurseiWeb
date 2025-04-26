const sidebar = document.querySelector('.sidebar');
const botao = document.getElementById('botao-abrir-sidebar-celular')
function abrirSidebar() {
    sidebar.style.display = "flex";
    botao.style.display = "none";
}

function fecharSidebar() {
    sidebar.classList.add("fecharSidebar")
    setTimeout(() => {
        sidebar.classList.remove("fecharSidebar")

        sidebar.style.display = "none";
    }, 320);

    botao.style.display = "block";

}
const links = document.querySelectorAll('.link-sidebar');
links.forEach(link => {
    if (window.location.pathname == new URL(link.href).pathname) {
        link.classList.add('link-atual');
    }
});

$.ajax({
    url: '/curseiAdm/nomedoadm',
    type: 'GET',
    success: function (data) {
        document.getElementById('nomedoadm').textContent = data
    }
})



if (localStorage.getItem('tema')) {
    const root = document.documentElement;
    tema = localStorage.getItem('tema');
    if (tema == 'claro') {
        root.style.setProperty('--verde', '#05A4B6');
        root.style.setProperty('--fundo', '#F6F6F6');
        root.style.setProperty('--branco', '#fff');
        root.style.setProperty('--preto', '#2c2c2c');
        root.style.setProperty('--cinzaClaro', '#898989');
        root.style.setProperty('--cinzaEscuro', '#616161');
        root.style.setProperty('--vermelho', '#CC0000');
        root.style.setProperty('--borderInput', '#00000017');
    
    } else {
        root.style.setProperty('--verde', '#05A4B6');
        root.style.setProperty('--fundo', '#1E1E1E');
        root.style.setProperty('--branco', '#2c2c2c');
        root.style.setProperty('--preto', '#fff');
        root.style.setProperty('--cinzaClaro', '#cccccc');
        root.style.setProperty('--cinzaEscuro', '#999999');
        root.style.setProperty('--vermelho', '#FF4C4C');
        root.style.setProperty('--borderInput', '#ffffff17');

    }
} else {
    localStorage.setItem('tema', 'claro');
}



