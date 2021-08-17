<!DOCTYPE html>
<html>

<head>
  <title>Lugares</title>
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KyZXEAg3QhqLMpG8r+8fhAXLRk2vvoC2f3B09zVXn8CA5QIVfZOJ3BCsw2P0p/We" crossorigin="anonymous">

  <style>
    .map-container-5 {
      overflow: hidden;
      padding-bottom: 56.25%;
      position: relative;
      height: 0;
    }

    .map-container-5 iframe {
      left: 0;
      top: 0;
      height: 100%;
      width: 100%;
      position: absolute;
    }
  </style>

</head>

<body>
@include('header')  
  <div class="container">

    <h1>{{$data['name'];}}</h1>

    <!--Grid row-->
    <div class="row">

      <!--Grid column-->
      <div class="col-md-6 mb-4">

        <!--Card-->
        <div class="card card-cascade narrower">

          <!--Card image-->
          <div class="view view-cascade gradient-card-header blue-gradient">
            <h5 class="mb-0">Humedad: {{$data['weather'][0]['description'];}}</h5>
          </div>
          <!--/Card image-->

          <!--Card content-->
          <div class="card-body card-body-cascade text-center">

            <!--Google map-->
            <div id="map-container-google-8" class="z-depth-1-half map-container-5" style="height: 300px">
              <iframe src="https://maps.google.com/maps?q={{$data['name'];}}&t=&z=13&ie=UTF8&iwloc=&output=embed" frameborder="0" style="border:0" allowfullscreen></iframe>
            </div>

          </div>
          <!--/.Card content-->

        </div>
        <!--/.Card-->

      </div>
      <!--Grid column-->

      <!--Grid column-->
      <div class="col-md-6 mb-4">

        <!--Card-->
        <div class="card card-cascade narrower">

          <!--Card image-->
          <div class="view view-cascade">
            <dl class="row">
              <dt class="col-sm-3">Description</dt>
              <dd class="col-sm-9">{{ $data['sys']['country'] }} - {{$data['name'];}}</dt>
              <dt class="col-sm-3">Weather</dt>
              <dd class="col-sm-9">{{$data['weather'][0]['main'];}}</dd>
              <dt class="col-sm-3">Description </dt>
              <dd class="col-sm-9">{{$data['weather'][0]['description'];}}</dd>
              <dt class="col-sm-3">Humidity</dt>
              <dd class="col-sm-9">{{$data['main']['humidity'];}}</dd>
              <dt class="col-sm-3">Lon</dt>
              <dd class="col-sm-9">{{$data['coord']['lon'];}}</dd>
              <dt class="col-sm-3">Lat</dt>
              <dd class="col-sm-9">{{$data['coord']['lat'];}}</dd>
            </dl>
          </div>

        </div>
        <!--/.Card-->
      </div>
      <!--Grid column-->
    </div>
    <!--Grid row-->

    <form method="POST" class="form-horizontal">
      <input type="hidden" name="_token" value="{{ csrf_token() }}"></input> {{ csrf_field() }}
      <input type="hidden" name="datacase" value="{{ json_encode($data,TRUE)}}" />

      <div class="form-group">
        <div class="col-md-6 col-md-offset-4">
          <button type="submit" class="btn btn-primary">
            Guardar
          </button>
        </div>
      </div>
    </form>

  </div>
  @include('footer') 
</body>

</html>