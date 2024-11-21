<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <title>Sucursales</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
        <style>
            .carousel-image {
                width: 100%;
                height: 650px; /* Altura fija para todas las imágenes */
                object-fit: cover;
            }
        </style>
    </head>
    <body>
        <div class="container mt-5">
            <h1 class="text-center mb-4">Nuestras Sucursales</h1>
            
            <!-- Carrusel de imágenes -->
            <div id="sucursalesCarousel" class="carousel slide" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <!-- Imagen 1 -->
                    <div class="carousel-item active">
                        <img src="Imagenes/Top-10.jpg" class="d-block w-100 carousel-image" alt="Sucursal 1">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Sucursal 1</h5>
                            <p>Dirección de Sucursal 1</p>
                        </div>
                    </div>
                    
                    <!-- Imagen 2 -->
                    <div class="carousel-item">
                        <img src="Imagenes/Top-9.jpg" class="d-block w-100 carousel-image" alt="Sucursal 2">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Sucursal 2</h5>
                            <p>Dirección de Sucursal 2</p>
                        </div>
                    </div>
                    
                    <!-- Imagen 3 -->
                    <div class="carousel-item">
                        <img src="Imagenes/Top 8.jpg" class="d-block w-100 carousel-image" alt="Sucursal 3">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Sucursal 3</h5>
                            <p>Dirección de Sucursal 3</p>
                        </div>
                    </div>
                    
                    <!-- Añadir más imágenes repitiendo el bloque de "carousel-item" -->
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
        </div>

        <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.8/dist/umd/popper.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.min.js"></script>     
    </body>
</html>