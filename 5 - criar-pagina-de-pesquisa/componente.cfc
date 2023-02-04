<cfcomponent>
    <!--- Propriedade --->
    <cfproperty  name="meuDSN" type="String">
    <cfset this.meuDSN = "curso_intermediario_cfm_dsn">

    <!--- Este metodo retorna lista de produtos --->
    <cffunction  name="retornarProdutos" returnType="Query">
        <cfargument name="produto" default=0>
        <cfargument  name="tempo" default=0>

        <cfquery datasource="#this.meuDSN#" name="qProdutos">
            SELECT id, nome_produto, tempo_entrega, preco_unitario, imagem_pequena
            FROM produtos
            WHERE 1 = 1

            <cfif ARGUMENTS.produto NEQ 0>
                AND nome_produto LIKE '%#ARGUMENTS.produto#%'
            </cfif>
            
            <cfif ARGUMENTS.tempo NEQ 0>
                AND tempo_entrega = #ARGUMENTS.tempo#
            </cfif>
        </cfquery>

        <cfreturn qProdutos>
    </cffunction>

</cfcomponent>