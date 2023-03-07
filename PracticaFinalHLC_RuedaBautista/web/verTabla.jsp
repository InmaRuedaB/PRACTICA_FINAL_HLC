<%@page import="dao.MensajeDaoImplement"%>
<%@page import="model.Mensaje"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tabla</title>
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
            <h1>PRACTICA FINAL HLC</h1>

        </header>
        <% int id = Integer.parseInt(session.getAttribute("id").toString());
            ArrayList<Mensaje> mensajes = new MensajeDaoImplement().getMensajesUsuario(id); %>
        <section>
            <article>
                <table>
                    <tr>
                        <th>Asunto</th>
                        <th>Contenido</th>
                        <th>Leido</th>
                        <th>Fecha</th>
                    </tr>

                    <%
                        for (Mensaje m : mensajes) {
                            Mensaje mensaje = m;

                    %>
                    <tr>
                        <td><%= mensaje.getAsunto()%></td>
                        <td><%= mensaje.getContenido()%></td>
                        <td><% if (mensaje.getLeido() == 1) { %>
                            Si
                            <%} else {%>
                            No
                            <%}%>
                        </td>
                        <td><%= mensaje.getFecha().toString()%></td>
                    </tr>
                    <% }%>
                </table>

            </article>
        </section>

        <% }%>

        <footer>
            <p>Volver a la principal>>>>>>>>>>>>>>>>>>>><a href="verPrincipal.jsp"> Pinche aquí</a> </p>
        </footer>
    </body>
</html>
