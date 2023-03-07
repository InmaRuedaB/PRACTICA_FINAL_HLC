<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Página Principal</title>
        <link rel="stylesheet" href="CSS/style.css">
    </head>
    <body>
        <% session.setAttribute("conectado", false);%>
        <header><h1>PRÁCTICA FINAL HLC</h1></header>

        <section>
            <article>

                <form method="post" action="LogIn">
                    Usuario:    <input type="text" name="user"></br>
                    Contraseña: <input type="password" name="pass"</br>
                    </br></br><input type="submit" value="ACCESO USUARIO">
                </form>

            </article>

        </section>

    </body>
</html>
