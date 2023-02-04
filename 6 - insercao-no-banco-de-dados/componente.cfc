<cfcomponent>
    <!--- Propriedade --->
    <cfproperty  name="meuDSN" type="String">
    <cfset this.meuDSN = "loja_de_instrumentos_dsn">

    <cffunction name="inserirPedido" returntype="String">
        <cfargument  name="item" required="true"/>
        <cfargument  name="modelo" required="true"/>
        <cfargument  name="nome" required="true"/>
        <cfargument  name="email" required="true"/>
        <cfargument  name="preco" required="true"/>

        <cfset erro = 0>
        <cftry>
            <cfquery datasource="loja_de_instrumentos_dsn">
                INSERT INTO pedidos (item, modelo, nome, email, preco) 
                values ("#ARGUMENTS.item#","#ARGUMENTS.modelo#","#ARGUMENTS.nome#","#ARGUMENTS.email#","#ARGUMENTS.preco#")           
            </cfquery>
            <cfcatch type="any">
                <cfset erro = 1>
            </cfcatch>
        </cftry>

        <cfif erro EQ 0>
            <cfset mensagem = "Inserção ocorreu com sucesso">
        <cfelse>
            <cfset mensagem = "Ocorreu um erro na inserção">
        </cfif>

        <cfreturn mensagem>
    </cffunction>

</cfcomponent>