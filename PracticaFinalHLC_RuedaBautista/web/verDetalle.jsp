<%@page import="dao.CuentaDaoImplement"%>
<%@page import="dao.UsuarioDaoImplement"%>
<%@page import="model.Mensaje"%>
<%@page import="dao.MensajeDaoImplement"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle</title>
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
        <% int id = Integer.parseInt(request.getParameter("id"));
            Mensaje men = new MensajeDaoImplement().getMensaje(id);
            String origen = new CuentaDaoImplement().getEmail(men.getCuecodigoorigen());
        %>
        <header>
            <h1>PRACTICA FINAL HLC</h1>
   
        </header>
        <section>
            <article>
                <h1><%= men.getAsunto()%></h1>
                <h1>De: <%= origen%></h1>
                <p>Fecha Envio: <%= men.getFecha().toString()%><p>
                <p>Leido: <% if (men.getLeido() == 1) { %>
                    Si
                    <%} else { %>
                    No
                    <%}%></p>
                <p><%= men.getContenido()%></p>
            </article>
        </section>
      
            <% }%>
            
            <footer>
            <p>Volver a la principal>>>>>>>>>>>>>>>>>>>><a href="verPrincipal.jsp"> Pinche aquí</a> </p>

            <p>Ir hacia atrás>>>>>>>>>>>>>>>>>>>><a href="verMensajes.jsp"> Pinche aquí</a> </p>
        </footer>
    </body>
</html>
