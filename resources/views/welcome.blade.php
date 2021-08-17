<!DOCTYPE html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">

<head>
    @include('cdn')
</head>

<body>
    @include('header')
        <div class="container">
            <nav class="navbar navbar-expand-lg navbar-light bg-light rounded" aria-label="Eleventh navbar example">
                <div class="container-fluid">
                    
                </div>
            </nav>
            <div>
                <div class="bg-light p-5 rounded">
                    <div class="col-sm-8 mx-auto">
                        <h1>Browser Travel</h1>
                        <p>
                        Es necesario realizar una página donde se consulte la humedad de las ciudades Miami, Orlando y New York y se muestren en un mapa, adicionalmente tiene que almacenar en un historial que se pueda consultar a través de un link en la página.
                        </p>

                        <p>
                        Se realiza con el api, api.openweathermap.org
                        </p>
                    </div>
                </div>
            </div>
        </div>
    </main>
    @include('footer')
</body>

</html>