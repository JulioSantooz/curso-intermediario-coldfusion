<cfcomponent>
    <!--- Propriedade --->
    <cfproperty  name="meuDSN" type="String">
    <cfset this.meuDSN = "loja_de_instrumentos_dsn">

    <!--- Este método retorna uma lista de pedidos --->
    <cffunction  name="listagemPedidos" returntype="Query">
        <cfquery datasource="#this.meuDSN#" name="listaPedidos">
            SELECT * FROM pedidos
        </cfquery>
        <cfreturn listaPedidos>
    </cffunction>

    <!--- Este método inseri um novo pedido --->
    <cffunction name="inserirPedido" returntype="String">
        <cfargument  name="item" required="true"/>
        <cfargument  name="modelo" required="true"/>
        <cfargument  name="nome" required="true"/>
        <cfargument  name="email" required="true"/>
        <cfargument  name="preco" required="true"/>

        <cfset erro = 0>
        <cftry>
            <cfquery datasource="#this.meuDSN#">
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

    <!--- Este método atualiza um pedido--->
    <cffunction  name="editarPedido" returntype="String">
        <cfargument  name="id" required="true"/>
        <cfargument  name="item" required="true"/>
        <cfargument  name="modelo" required="true"/>
        <cfargument  name="nome" required="true"/>
        <cfargument  name="email" required="true"/>
        <cfargument  name="preco" required="true"/>

        <cfset erro = 0>
        <cftry>
            <cfquery datasource="#this.meuDSN#">
                UPDATE pedidos SET
                item = "#ARGUMENTS.item#",
                modelo = "#ARGUMENTS.modelo#",
                nome = "#ARGUMENTS.nome#",
                email = "#ARGUMENTS.email#",
                preco = #ARGUMENTS.preco#
                WHERE id = #ARGUMENTS.id#
            </cfquery>
            <cfcatch type="any">
                <cfset erro = 1>
            </cfcatch>
        </cftry>

        <cfif erro EQ 0>
            <cfset mensagem = "Atualização ocorreu com sucesso">
        <cfelse>
            <cfset mensagem = "Ocorreu um erro na atualização">
        </cfif>

        <cfreturn mensagem>

    </cffunction>

</cfcomponent>

