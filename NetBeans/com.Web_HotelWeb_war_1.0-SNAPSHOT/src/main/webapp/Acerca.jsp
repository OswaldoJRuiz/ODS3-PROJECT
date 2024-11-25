<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <title>Acerca de Nosotros</title>
</head>
<body>

    <%@ include file="Navbar.jsp" %>

    <div class="container my-5">
        <div class="row">
            <div class="col-lg-6">
                <h1 class="text-center mb-4">Acerca de Nosotros</h1>
                <p class="lead">
                    Bienvenido a Hoteles, donde hacemos de tu comodidad nuestra prioridad.
                    Nos especializamos en ofrecerte una experiencia única en hospitalidad, con opciones de reservas
                    que se ajustan a tus necesidades. Con años de experiencia en el sector, estamos dedicados a brindar 
                    un servicio de alta calidad y a garantizar que cada estancia sea inolvidable.
                </p>
                <p>
                    Nuestro equipo está comprometido a ofrecerte atención personalizada, y nuestro portal de reservas te 
                    facilita encontrar y reservar la habitación ideal para tus planes de viaje. Ya sea que nos visites por 
                    negocios, vacaciones, o escapadas de fin de semana, nuestro objetivo es ofrecerte una experiencia 
                    memorable y reconfortante.
                </p>
            </div>
            <div class="col-lg-6">
                <img src="Imagenes/Logo Hotel.png" alt="Imagen de hotel" class="img-fluid rounded shadow-lg">
            </div>
        </div>
    </div>

    <!-- Footer Section -->
    <footer class="bg-dark text-white py-4">
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <h5>Contáctanos</h5>
                    <ul class="list-unstyled">
                        <li><strong>Email:</strong> contacto@hoteles.com</li>
                        <li><strong>Teléfono:</strong> +52 33 1958 1838</li>
                        <li><strong>Dirección:</strong> Jardines del Country, Guadalajara, Jalisco, México</li>
                    </ul>
                </div>
                <div class="col-md-6 text-md-end">
                    <h5>Síguenos en nuestras redes sociales</h5>
                    <a href="https://facebook.com" class="btn btn-primary btn-sm" target="_blank">
                        <i class="bi bi-facebook"></i> Facebook
                    </a>
                    <a href="https://twitter.com" class="btn btn-info btn-sm" target="_blank">
                        <i class="bi bi-twitter"></i> Twitter
                    </a>
                    <a href="https://instagram.com" class="btn btn-danger btn-sm" target="_blank">
                        <i class="bi bi-instagram"></i> Instagram
                    </a>
                </div>
            </div>
        </div>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-icons/font/bootstrap-icons.js"></script>

</body>
</html>