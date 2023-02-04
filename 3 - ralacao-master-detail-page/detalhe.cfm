<cfset setLocale("Portuguese (Brazilian)")>
<cfparam  name="URL.id" default="1">

<cftry>
    <cfquery datasource="curso_intermediario_cfm_dsn" name="qDetalhes">
        SELECT * FROM produtos
        WHERE id = <cfqueryparam value="#URL.id#" cfsqltype="cf_sql_integer">
    </cfquery>
    <cfcatch type="any">
        <cflocation  url="erro.cfm">
    </cfcatch>
</cftry>

<!---
<cfif #URL.id# LT 1 OR #URL.id# GT 10>
    <cflocation  url="erro.cfm">
</cfif>
--->

<cfset data = Now()>
<cfset dataEstimada = DateAdd("d",qDetalhes.tempo_entrega, "#data#")>
<cfset dataFormatada = dateFormat(dataEstimada, "dd/mm/yyyy")>

<!--- <cfdump  var="#qDetalhes#"> --->

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="../1 - materiais/css/estilo.css" rel="stylesheet">
    <link href="../1 - materiais/css/produto_detalhe.css" rel="stylesheet">
    <title>Relação Master Detail Page</title>
</head>
<body>
    <main>
        <div id="detalhe_produto">
            <cfoutput> 
                <ul>
                    <li class="imagem">
                        <img style="width:200px" src="#qDetalhes.imagem_grande#">
                    </li>
                    <li>
                        <h2>#qDetalhes.nome_produto#</h2>
                    </li>
                    <li><b>Descrição:</b> #qDetalhes.descricao_produto#</li>
                    <li><b>Preço:</b> #LSCurrencyFormat(qDetalhes.preco_unitario, "local")#.</li>
                    <li><b>Entrega:</b> #qDetalhes.tempo_entrega# dias.</li>
                    <li><b>Estimativa de Entrega:</b> #dataFormatada#.</li>
                </ul>
            </cfoutput>
        </div>
    </main>
</body>
</html>