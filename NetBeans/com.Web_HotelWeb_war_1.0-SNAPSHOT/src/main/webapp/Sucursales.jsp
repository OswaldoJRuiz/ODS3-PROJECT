<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="Navbar.jsp" %>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Sucursales</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            body {
                background-color: #f0f8ff;
                font-family: Arial, sans-serif;
                padding-top: 70px;
            }

            .navbar {
                background-color: #4682b4;
                position: fixed;
                top: 0;
                width: 100%;
                z-index: 1030;
            }

            .container {
                max-width: 1100px;
                margin-bottom: 30px;
            }

            h1 {
                color: #2f4f4f;
                font-size: 36px;
                font-weight: bold;
            }

            .carousel-image {
                width: 100%;
                height: auto;
                object-fit: cover;
            }

            .carousel-caption {
                background: rgba(0, 0, 0, 0.5);
                padding: 10px;
                border-radius: 5px;
            }

            .card {
                border-radius: 10px;
                box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
                overflow: hidden;
                margin-top: 20px;
                transition: all 0.3s ease;
            }

            .card:hover {
                transform: scale(1.05);
            }

            .card-title {
                font-size: 24px;
                color: #333;
                font-weight: bold;
            }

            .card-text {
                font-size: 16px;
                color: #555;
            }

            .btn-info {
                background-color: #4682b4;
                border-color: #4682b4;
                transition: background-color 0.3s;
            }

            .btn-info:hover {
                background-color: #5a9bd5;
                border-color: #5a9bd5;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1 class="text-center mb-4">Nuestras Sucursales</h1>
            
            <!-- Carrusel de imágenes -->
            <div id="sucursalesCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <!-- Imagen 1 -->
                    <div class="carousel-item active">
                        <picture>
                            <source srcset="Imagenes/Hotel Bonito.webp" type="image/webp">
                            <img src="Imagenes/Hotel Bonito.webp" class="d-block w-100 carousel-image" alt="Sucursal 1">
                        </picture>
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Hotel Bonito</h5>
                            <p>Calle Lucidez, Guadalajara</p>
                        </div>
                    </div>
                    
                    <!-- Imagen 2 -->
                    <div class="carousel-item">
                        <picture>
                            <source srcset="Imagenes/Hotel Lujoso.webp" type="image/webp">
                            <img src="Imagenes/Hotel Lujoso.webp" class="d-block w-100 carousel-image" alt="Sucursal 2">
                        </picture>
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Hotel Lujoso</h5>
                            <p>Avenida Circunvalacion, Zapopan</p>
                        </div>
                    </div>
                    
                    <!-- Imagen 3 -->
                    <div class="carousel-item">
                        <picture>
                            <source srcset="Imagenes/Hotel Imperial.webp" type="image/webp">
                            <img src="Imagenes/Hotel Imperial.webp" class="d-block w-100 carousel-image" alt="Sucursal 3">
                        </picture>
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Hotel Imperial</h5>
                            <p>Plaza Real, Guadalajara</p>
                        </div>
                    </div>
                </div>

                <!-- Controles del carrusel -->
                <button class="carousel-control-prev" type="button" data-bs-target="#sucursalesCarousel" data-bs-slide="prev">
                    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Anterior</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#sucursalesCarousel" data-bs-slide="next">
                    <span class="carousel-control-next-icon" aria-hidden="true"></span>
                    <span class="visually-hidden">Siguiente</span>
                </button>
            </div>

            <!-- Tarjetas de sucursales -->
            <div class="row mt-4">
                <div class="col-md-4">
                    <div class="card">
                        <img src="Imagenes/Hotel Bonito.webp" class="card-img-top carousel-image" alt="Hotel Bonito">
                        <div class="card-body">
                            <h5 class="card-title">Hotel Bonito</h5>
                            <p class="card-text">Calle Lucidez, Guadalajara</p>
                            <a href="#" class="btn btn-info">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="Imagenes/Hotel Lujoso.webp" class="card-img-top carousel-image" alt="Hotel Lujoso">
                        <div class="card-body">
                            <h5 class="card-title">Hotel Lujoso</h5>
                            <p class="card-text">Avenida Circunvalacion, Zapopan</p>
                            <a href="#" class="btn btn-info">Ver más</a>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="card">
                        <img src="Imagenes/Hotel Imperial.webp" class="card-img-top carousel-image" alt="Hotel Imperial">
                        <div class="card-body">
                            <h5 class="card-title">Hotel Imperial</h5>
                            <p class="card-text">Plaza Real, Guadalajara</p>
                            <a href="#" class="btn btn-info">Ver más</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>
    </body>
</html>
