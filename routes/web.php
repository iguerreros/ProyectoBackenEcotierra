<?php

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

//RUTAS QUE INCLUYEN TODOS LOS MÉTODOS HTTP
Route::resource('/', 'ClientesController');
Route::resource('/api/listaCliente', 'ClientesController');
Route::resource('/api/ListaArticulos', 'ArticulosController');
Route::resource('/api/compras', 'ComprasController');