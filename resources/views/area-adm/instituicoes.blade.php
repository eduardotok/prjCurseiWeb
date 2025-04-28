<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Todas as instituicoes</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.5/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-SgOJa3DmI69IUzQ2PVdRZhwQ+dy64/BUtbMJw1MZ8t5HZApcHrRKUc4W0kG879m7" crossorigin="anonymous">

    @include('area-adm.componentes.links-base')

    <link rel="stylesheet" href="{{asset('css/instituicoesAdm.css')}}">
</head>
<body>
@include('area-adm.componentes.sidebar')

    <main>

        <div class="container-fluid cont">
        <div class="tituloGeral">
                <p>Instituições</p>
            </div>

            <div class="SelecInputs">
                <div class="pesqInput">
                    <input type="text" placeholder="Digite o nome da instituicão">
                    <i class="fa-solid fa-magnifying-glass"></i>
                </div>


                <select class="form-select selectInst">
                    <option value="all">
                        Todas as instituicoes
                    </option>
                    <option value="all">
                        Instituicoes ativas
                    </option>
                    <option value="all">
                        Desativadas
                    </option>
                </select>


                 <select name="Organizar" class="form-select selectInst">
                    <option value="all">
                        Mais seguidas
                    </option>
                    <option value="all">
                        Menos seguidas
                    </option>
                    <option value="all">
                        Mais recentes
                    </option>
                    <option value="all">
                        Mais antigas
                    </option>
                    </select>

                   





            </div>

                            <div class="listarCards">

                            @foreach ($todasInstituicoes as $instituicao) 
                            <a href="/curseiAdm/dashInstituicaoAdm/{{ $instituicao->id}}">
                <div class="card">
             
                    <div class="imgContainer">
                        <img src="{{ asset('img/user/fotoPerfil/' . ($instituicao->img_user ?? 'default-banner.jpg')) }}" alt="Logo Senac" />
                        </div>
                    <div class="nomeCard">
                    <p>{{ $instituicao->nome_user }}</p>
                    </div>
                    <div class="infoCard">
                        <div>
                            <span>{{ $instituicao->total_curtidas }}</span>
                            Curtidas
                        </div>
                        <div>
                            <span>{{ $instituicao->total_seguidores }}</span>
                        seguidores
                        </div>
                    </div>
                 
                </div>
            </a>
                @endforeach


           
                
                

               


                
                </div>


    </main>

   
</body>
</html>