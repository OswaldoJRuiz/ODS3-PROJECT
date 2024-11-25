<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="Navbar.jsp" %>
<!DOCTYPE html>
<html lang="es">
    <head>
        <!-- Este es el jsp de inicio de sesión en donde manda la lógica hacia el Validador -->
        <meta charset="UTF-8">
        <title>Iniciar Sesión</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                background-color: #f8f9fa;
            }
            .card {
                border-radius: 50px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }
            .card-body {
                padding: 40px;
            }
            h3 {
                font-size: 2rem;
                margin-bottom: 20px;
            }
            .form-label {
                font-weight: bold;
            }
            .form-control {
                border-radius: 5px;
            }
            .btn-primary {
                width: 100%;
                padding: 12px;
                border-radius: 5px;
            }
            .btn-primary:hover {
                background-color: #0056b3;
            }
            .container {
                margin-top: 50px;
            }
            .card-footer {
                text-align: center;
                margin-top: 20px;
            }
            .card-footer a {
                text-decoration: none;
                font-weight: bold;
            }
            .card {
                max-width: 450px;
                margin: 0 auto;
            }
        </style>
    </head>
    <body>

        <div class="container">
            <div class="card">
                <div class="card-body">
                    <h3>Iniciar Sesión</h3>

                    <c:if test="${not empty error}">
                        <div class="alert alert-danger">${error}</div>
                    </c:if>

                    <form action="Validador" method="post">
                        <input type="hidden" name="action" value="Ingresar">
                        <div class="mb-3">
                            <label for="correo" class="form-label">Correo:</label>
                            <input type="email" class="form-control" name="correo" required>
                        </div>
                        <div class="mb-3">
                            <label for="contraseña" class="form-label">Contraseña:</label>
                            <input type="password" class="form-control" name="password" required>
                        </div>
                        <button type="submit" class="btn btn-primary">Iniciar Sesión</button>
                    </form>
                    <div class="card-footer">
                        <p>¿No tienes cuenta? <a href="Registrarse.jsp">Crea una aquí</a></p>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
    </body>
</html>