<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="Navbar.jsp" %>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Crear Cuenta</title>
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
            margin-bottom: 10px;
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
            margin-top: 10px;
        }
        .card-footer a {
            text-decoration: none;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <div class="container col-lg-4">
        <div class="card">
            <div class="card-body">
                <form action="RegistrarUsuarios" method="post"> <!-- Este es el validador para registrar usuarios -->
                    <h3>Crear Cuenta</h3>
                    <div class="form-group mb-3">
                        <label for="username" class="form-label">Nombre de Usuario:</label>
                        <input type="text" id="username" name="username" class="form-control" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="nombre" class="form-label">Nombre:</label>
                        <input type="text" id="nombre" name="nombre" class="form-control" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="telefono" class="form-label">Número de Teléfono:</label>
                        <input type="text" id="telefono" name="telefono" class="form-control" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="correo" class="form-label">Correo Electrónico:</label>
                        <input type="email" id="correo" name="correo" class="form-control" required>
                    </div>
                    <div class="form-group mb-3">
                        <label for="password" class="form-label">Contraseña:</label>
                        <input type="password" id="password" name="password" class="form-control" required>
                    </div>
                    <input type="submit" value="Registrar" class="btn btn-primary">
                </form>
            </div>
            <div class="card-footer">
                <p>¿Ya tienes cuenta? <a href="InicioSesion.jsp">Inicia sesión aquí</a></p>
            </div>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
</body>
</html>