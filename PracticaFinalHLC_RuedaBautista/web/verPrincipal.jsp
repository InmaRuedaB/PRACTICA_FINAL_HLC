<%@page import="dao.CuentaDaoImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal Opciones</title>
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
        <% } else { %>

        <header>
            <h1>PRÁCTICA FINAL HLC</h1>

        </header>

        <% int id = Integer.parseInt(session.getAttribute("id").toString());
            double recargo = new CuentaDaoImplement().getRecargo(id);%>

        <img src="fotos/<%= session.getAttribute("foto").toString()%>" />

        <section>
            <article>
                <button onclick='alert("<%= recargo%>")'>RECARGOS PENDIENTES</button>

            </article>

            <article>

                <form method="post" action="verTabla.jsp">
                    <input type="submit" value="ACCEDER A LA VISTA DE LA TABLA DE MENSAJES" />
                </form>
            </article>

            <article>
                <form method="post" action="verMensajes.jsp">
                    <input type="submit" value="ACCEDER AL LISTADO DE MENSAJES" />
                </form>

            </article>

        </section>

        <% }%>

        <footer>
            <p>Volver a la principal>>>>>>>>>>>>>>>>>>>><a href="verPrincipal.jsp"> Pinche aquí</a> </p>
        </footer>

    </body>
</html>
