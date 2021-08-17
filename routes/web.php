<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\UserController;
use App\Http\Controllers\LugaresController;
use App\Http\Controllers\ReporteController;
/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});
Route::get('users', [UserController::class, 'index'])->name('users.index');
Route::get('cities', [LugaresController::class, 'index'])->name('cities.index');
Route::get('clima/{ciudad}', [ReporteController::class, 'index'])->name('reporte.index');
Route::post('clima/{ciudad}', [ReporteController::class, 'create'])->name('reporte.index');
Route::get('view-report', [ReporteController::class, 'show'])->name('view-report.show');
