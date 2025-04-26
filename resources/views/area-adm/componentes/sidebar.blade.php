<div class="sidebar">
        <div class="fechar-celular">
            <button onclick="fecharSidebar()">
                <i class='bx bx-x'></i>
            </button>
        </div>
        <div class="logo-sidebar"><img src="" alt=""></div>
        <script>
            if (localStorage.getItem('tema') == 'escuro'){

                document.querySelector('.logo-sidebar img').src = "{{ asset('img/Icone_Cursei_Branco.png') }}";
            }else{
                document.querySelector('.logo-sidebar img').src = "{{asset('img/Icone_Logo_Cursei_Preta.png')}}";

            }
</script>
        <div class="adm-sidebar">

            <i class='bx bx-user'></i>

            <div class="textos">
                <p id="nomedoadm"></p>
                <p><span>Administrador</span></p>
            </div>
        </div>
        <div class="links-sidebar">
            <a href="/curseiAdm" class="link-sidebar">
                <p>Dashboard</p>
                <i class='bx bx-home-alt'></i>
            </a>
            <a href="/curseiAdm/usuarios"  class="link-sidebar">
                <p>Usuarios</p>
                <i class='bx bx-user'></i>
            </a>
            <a href="/curseiAdm/instituicao" class="link-sidebar">
                <p>Instituições</p>
                <i class='bx bxs-institution'></i>
            </a>
            <a href="/curseiAdm/denuncias" class="link-sidebar">
                <p>Denúncias</p>
                <i class='bx bx-error-alt'></i>
            </a>
            <!-- <a href="/curseiAdm/contato" class="link-sidebar">
                <p>Contato</p>
                <i class='bx bx-message-dots'></i>
            </a> -->
            <a href="/curseiAdm/posts" class="link-sidebar">
                <p>Posts</p>
                <i class='bx bx-image-alt'></i>
            </a>
            <a href="/curseiAdm/curtai" class="link-sidebar">
                <p>Curteis</p>
                <i class='bx bxs-videos'></i>
            </a>
            <a href="/curseiAdm/configuracoes" class="link-sidebar">
                <p>Configurações</p>
                <i class='bx bx-cog'></i>
            </a>
            <a href="/curseiAdm/deslogar" class="link-sidebar">
                <p>Sair</p>
                <i class='bx bx-exit' ></i>
            </a>
        </div>
    </div>
    <div class="sidebar-celular">
        <button onclick="abrirSidebar()">
            <i class='bx bx-menu'></i>
        </button>
    </div>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script src="{{asset('js/sidebarAdm.js')}}"></script>
