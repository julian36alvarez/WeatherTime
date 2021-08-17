
# Weather Time

<p align="center"><a href="https://laravel.com" target="_blank"><img src="https://raw.githubusercontent.com/laravel/art/master/logo-lockup/5%20SVG/2%20CMYK/1%20Full%20Color/laravel-logolockup-cmyk-red.svg" width="400"></a></p>

<p align="center">
<a href="https://travis-ci.org/laravel/framework"><img src="https://travis-ci.org/laravel/framework.svg" alt="Build Status"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/dt/laravel/framework" alt="Total Downloads"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/v/laravel/framework" alt="Latest Stable Version"></a>
<a href="https://packagist.org/packages/laravel/framework"><img src="https://img.shields.io/packagist/l/laravel/framework" alt="License"></a>
</p>


## About This Proyect

This project was made in Laravel 8, the suggested api was not used since it does not work

![image](https://user-images.githubusercontent.com/31891276/129647791-d4522400-78fb-477e-b085-8e4c6258b98f.png)

On approximately June 1, 2021, the free Yahoo Weather API will be retired and will cease to function. Unfortunately, we will not be offering a replacement API, and there will be no paid alternative.

the solution was to use: https://openweathermap.org/api 


![image](https://user-images.githubusercontent.com/31891276/129647869-841a0d5c-322f-4e0b-988c-93edea39687a.png)


# Proyect Test

![image](https://user-images.githubusercontent.com/31891276/129647953-73bad2db-a11f-46a3-abde-200b8bf9348b.png)

![image](https://user-images.githubusercontent.com/31891276/129647981-e504019d-dc2e-4686-954a-3124dd386ba4.png)

![image](https://user-images.githubusercontent.com/31891276/129647989-74059c38-974c-44aa-add7-22e79271f03e.png)

![image](https://user-images.githubusercontent.com/31891276/129648020-9c484b87-2cb1-431e-9dda-75925df78290.png)

Api method:

        public function index(Request $request)
            {
                $ciudad = $request->route('ciudad');
                $response = Http::get(env('API_URL'), [
                    'q' => $ciudad,
                    'appid' => env('API_ID'),
                ]);
                $data = $response->json();
               // dd($data);
                return view('reporte', compact('data'));

            }

![image](https://user-images.githubusercontent.com/31891276/129648072-3ea287e5-2006-48ed-ba51-8d546d2c2cc3.png)

![image](https://user-images.githubusercontent.com/31891276/129648108-f1efd218-99d8-42ee-bfaa-19f7b341483a.png)


![image](https://user-images.githubusercontent.com/31891276/129648124-84d5faf8-3b05-4a2e-b1f7-0da444351fb4.png)


## Commands To Deploy

    git clone https://github.com/julian36alvarez/WeatherTime.git
    composer install
    cp .env.example .env
    php artisan key:generate
    php artisan serve
