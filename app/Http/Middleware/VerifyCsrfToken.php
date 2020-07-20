<?php

namespace App\Http\Middleware;

use Illuminate\Foundation\Http\Middleware\VerifyCsrfToken as Middleware;

class VerifyCsrfToken extends Middleware{
  
    protected $addHttpCookie = true;
    protected $except = [
        'http://ecotierra.com:81/api/listaCliente',
        'http://ecotierra.com:81/api/ListaArticulos',
        'http://ecotierra.com:81/api/compras' 
    ];
}
