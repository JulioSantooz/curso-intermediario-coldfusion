<cfset setLocale("Portuguese (Brazilian)")>

<cfinvoke component="curso_intermediario_cfm.5 - criar-pagina-de-pesquisa.componente" method="retornarProdutos" returnvariable="listaNomesProduto">
    <cfif isDefined("url.produto")>
        <cfinvokeargument name="produto" value="#url.produto#">
    </cfif>
    <cfif isDefined("url.tempo")>
        <cfinvokeargument name="tempo" value="#url.tempo#">
    </cfif>
</cfinvoke>

<!--- <cfdump  var="#listaNomesProduto#"> --->

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
    <cfinclude  template="../1 - materiais/templates/header.cfm">
    <main>
        <div id="campo-pesquisa">
            <form action="listagem.cfm" method="get">
                <input type="text" name="produto" placeholder="Pesquisa">
                <input style="width:20px" type="image" name="pesquisa" src="../1 - materiais/imagens/lupa.png">

                <cfset dias_de_entrega = "5,15,30">
                <select name="tempo" style="margin-left:20px">
                    <option value="0">Escolha o tempo de entrega</option>
                    <cfloop list="#dias_de_entrega#" item="i">
                        <cfoutput>
                            <option value="#i#" <cfif isDefined("url.tempo") AND url.tempo EQ #i#> selected </cfif> >#i#</option>
                        </cfoutput>
                    </cfloop>
                </select>
            </form>
        </div>
        <div id="listagem_produtos">
            <cfoutput query="listaNomesProduto">
                <ul>
                    <li class="imagem">
                        <a href="detalhe.cfm?id=#id#">
                            <img style="width: 80px" src="#imagem_pequena#">
                        </a>
                    </li>
                    <li>
                        <h3>#nome_produto#</h3>
                    </li>
                    <li>#LSCurrencyFormat(preco_unitario, "local")#</li>
                    <li>#tempo_entrega# dias</li>
                </ul>
            </cfoutput>
        </div>
    </main> 
</body>
</html>