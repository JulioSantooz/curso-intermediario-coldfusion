<cfcomponent>
    <!--- Propriedade --->
    <cfproperty  name="meuDSN" type="String">
    <cfset this.meuDSN = "curso_intermediario_cfm_dsn">

    <!--- Este método retorna um nome --->
    <cffunction  name="retornarNome" returnType="String">
        <cfset nome = "Julio Henrique Diaz Viana dos Santos.">
        <cfreturn nome>
    </cffunction>

    <!--- Este metodo retorna lista de produtos --->
    <cffunction  name="retornarProdutos" returnType="Query">
        <cfargument name="preco" default=0>
        <cfquery datasource="#this.meuDSN#" name="qProdutos">
            SELECT id, nome_produto, tempo_entrega, preco_unitario, imagem_pequena
            FROM produtos
            <cfif ARGUMENTS.preco NEQ 0>
                WHERE preco_unitario <= #ARGUMENTS.preco#
            </cfif>
        </cfquery>
        <cfreturn qProdutos>
    </cffunction>

</cfcomponent>