<cfset setLocale("Portuguese (Brazilian)")>

<cfinvoke component="curso_intermediario_cfm.4 - componentes.componente" method="retornarProdutos" returnvariable="listaNomesProduto">
    <cfinvokeargument  name="preco"  value="1000">
</cfinvoke>

<!--- <cfdump  var="#listaNomesProduto#"> --->

<cfoutput query="listaNomesProduto">
    <li>#nome_produto# - #lsCurrencyFormat(preco_unitario)#</li>
</cfoutput>