<cfset setLocale("Portuguese (Brazilian)")>
    
<cfif isDefined("form.botao")>
    <cfinvoke component="curso_intermediario_cfm.6 - insercao-no-banco-de-dados.componente" method="inserirPedido" returnvariable="mensagem">

        <cfinvokeargument  name="item"  value="#form.item#"/>
        <cfinvokeargument  name="modelo"  value="#form.modelo#"/>
        <cfinvokeargument  name="nome"  value="#form.nome#"/>
        <cfinvokeargument  name="email"  value="#form.email#"/>
        <cfinvokeargument  name="preco"  value="#form.preco#"/>

    </cfinvoke>
</cfif>

<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="style.css">
    <title>Fomulário de Cadastro</title>
</head>
<body>

    <div class="titulo">
        <h2>Cadastro</h2>
    </div> 
    <div class="container-formulario">
       <form class=" conteudo-formulario" action="insercao-banco-de-dados.cfm" method="post">

            <div>
                <label for="item">Informe o item:</label>
                <input style="margin-top:10px" type="text" name="item" id="item" maxlength="50" placeholder="Digíte">
            </div>

            <div>
                <label for="modelo">Informe o modelo:</label>
                <input style="margin-top:10px" type="text" name="modelo" id="modelo" maxlength="10" placeholder="Digíte">
            </div>

            <div>
                <label for="nome">Informe nome:</label>
                <input style="margin-top:10px" type="text" name="nome" id="nome" maxlength="50" placeholder="Digíte">
            </div>

            <div>
                <label for="email">Informe o seu e-mail:</label>
                <input style="margin-top:10px" type="email" name="email" id="email" maxlength="50" placeholder="Digíte">
            </div>

            <div>
                <label for="preco">Informe o preço:</label>
                <input style="margin-top:10px" type="number" name="preco" id="preco" placeholder="Digíte">
            </div>

            <button type="submit" name="botao" value="inserir">Enviar</button>

            <cfif isDefined("VARIABLES.mensagem") AND VARIABLES.mensagem EQ "Inserção ocorreu com sucesso">
                <cfoutput>
                    <h4 style="color:green">#mensagem#</h4>
                </cfoutput>
            <cfelseif isDefined("VARIABLES.mensagem") AND VARIABLES.mensagem EQ "Ocorreu um erro na inserção">
                <cfoutput>
                    <h4 style="color:red">#mensagem#</h4>
                </cfoutput>
            </cfif>
       </form>
    </div>
    
</body>
</html>