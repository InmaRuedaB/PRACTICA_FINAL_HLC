<%@page import="dao.MensajeDaoImplement"%>
<%@page import="model.Mensaje"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Articulo</title>
        <link rel="stylesheet" href="CSS/style.css">
    </head>
    <body>
        <% Boolean conectado = (Boolean) session.getAttribute("conectado");
            if (!conectado.booleanValue()) { %>
        <form method="post" id="casa" action='index.jsp'/>
        <script type="text/javascript">
            function formAutoSubmit() {
                var frm = document.getElementById("casa");
                frm.submit();
            }
            window.onload = formAutoSubmit;
        </script>
        <% } else {%>
        <header>
            <h1>PRACTICA FINAL HLC</h1>

        </header>
        <%
            int id = Integer.parseInt(session.getAttribute("id").toString());
            ArrayList<Mensaje> mensajes = new MensajeDaoImplement().getMensajesUsuario(id);
            for (Mensaje men : mensajes) {
                Mensaje mensaje = men;

        %>
        <section class="art">
            <article>
                <h4><b><%= mensaje.getAsunto()%></b></h4>
                <form method="post" action="verDetalle.jsp">
                    <input type="hidden" value="<%= mensaje.getNumero()%>" name="id" />
                    <input type="submit" class="btn btn-primary" value="VER DETALLE DEL MENSAJE">
                </form>
                <br>
            </article> 
        </section>


        <% } %>
        <% }%>

        <footer>
            <p>Volver a la principal>>>>>>>>>>>>>>>>>>>><a href="verPrincipal.jsp"> Pinche aquí</a> </p>

        </footer>
    </body>
</html>
