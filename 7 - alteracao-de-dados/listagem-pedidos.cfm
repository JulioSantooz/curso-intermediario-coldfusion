<cfset setLocale("Portuguese (Brazilian)")>

<cfinvoke component="curso_intermediario_cfm.7 - alteracao-de-dados.componente" method="listagemPedidos" returnvariable="listagem">

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../1 - materiais/css/estilo.css" rel="stylesheet">
    <link href="../1 - materiais/css/produtos.css" rel="stylesheet">

    <!-- Link css Bootstrap-->
    <link rel="stylesheet" 
              href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" 
              integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" 
              crossorigin="anonymous">
    <title>Alteração de dados</title>
</head>
<body>
    <cfinclude template="../1 - materiais/templates/header.cfm">
    <table class="table table-dark">
        <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Item</th>
                <th scope="col">Modelo</th>
                <th scope="col">Nome</th>
                <th scope="col">Email</th>
                <th scope="col">Preço</th>
            </tr>
        </thead>
        <tbody>
            <cfoutput query="listagem">
                <tr>
                    <th scope="row">#id#</th>
                    <td>#item#</td>
                    <td>#modelo#</td>
                    <td>#nome#</td>
                    <td>#email#</td>
                    <td>#LSCurrencyFormat(preco, "local")#</td>
                    <td>
                        <a href="alteracao-pedido.cfm?id=#id#">Alterar</a>
                    </td>
                </tr>
            </cfoutput>
        </tbody>
    </table>
</body>
</html>

