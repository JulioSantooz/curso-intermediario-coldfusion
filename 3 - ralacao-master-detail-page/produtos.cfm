<cfset setLocale("Portuguese (Brazilian)")>

<cfquery datasource="curso_intermediario_cfm_dsn" name="qProdutos">
    SELECT id, nome_produto, tempo_entrega, preco_unitario, imagem_pequena
    FROM produtos
</cfquery>

<!--- <cfdump  var="#qProdutos#"> --->

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../1 - materiais/css/estilo.css" rel="stylesheet">
    <link href="../1 - materiais/css/produtos.css" rel="stylesheet">
    <title>Relação Master Detail Page</title>
</head>
<body>
    <main>
        <div id="listagem_produtos">
            <cfoutput query="qProdutos">
                <ul>
                    <li class="imagem">
                        <a href="detalhe.cfm?id=#qProdutos.id#">

                            <img style="width: 80px" src="#qProdutos.imagem_pequena#">
                        </a>
                    </li>
                    <li>
                        <h3>#qProdutos.nome_produto#</h3>
                    </li>
                    <li>#LSCurrencyFormat(qProdutos.preco_unitario, "local")#</li>
                    <li>#qProdutos.tempo_entrega# dias</li>
                </ul>
            </cfoutput>
        </div>
    </main> 
</body>
</html>