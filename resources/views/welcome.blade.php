<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <title>Laravel</title>

        <!-- Fonts -->
        <link rel="preconnect" href="https://fonts.bunny.net">
        <link href="https://fonts.bunny.net/css?family=instrument-sans:400,500,600" rel="stylesheet" />

        <!-- Styles / Scripts -->
  
    </head>
  <body>
    <form action="alterarAdm/{{2}}" method="get">
        @csrf
        <input type="text" name="nome">
        <input type="text" name="email">
        <input type="text" name="senha">
        <input type="submit" value="aa" placeholder="enviar">
    </form>
    <input type="checkbox" checked>
  </body>
</html>
