<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Usuarios</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    @include('area-adm.componentes.links-base')

    <link rel="stylesheet" href="{{asset('css/loginAdm.css')}}">
</head>

<body>

    <div class="container">
   
        <div class="row">
            <div class="col img">
                <img src="{{asset('img/adm/login.svg')}}" alt="">
            </div>
            <div class="col">
            <div class="cont">
                <img src="{{asset('img/Icone_Logo_Cursei_Preta.png')}}" alt="">
                
                <div class="titulo">
                    <p>Administração</p>
                    <span>Faça login ao Cursei!</span>
                </div>
                @error('nome_admin')
                <p class="erro">{{$message}}</p>
                @enderror
                <form action="/curseiAdm/logar" method="post">
                    @csrf
                <div class="contInput">
                    <input type="text" placeholder="Usuario" name="nome_admin">
                    <i class="fa-regular fa-user"></i>
                </div>
                <div class="contInput">
                    <input type="password" id="senha" placeholder="Senha" name="senha_admin">
                    <i class="fa-regular fa-eye-slash" id="olho" style="cursor: pointer;"></i>
                </div>
           
                <button type="submit">LOGIN</button>
                </form>
            </div>
            </div>
        </div>
    </div>

    <script src="{{asset ('js/loginAdm.js')}}"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-k6d4wzSIapyDyv1kpU366/PK5hCdSbCRGRCMv+eplOQJWyd1fbcAu9OCUj5zNLiq"
        crossorigin="anonymous"></script>
</body>

</html>