<?php

namespace App\Http\Controllers;
use App\Articulos;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class ArticulosController extends Controller {
  
  public function index(Request $request){

    $articulos = Articulos::all();
       $json = array();  

        if(!empty($articulos)){

            $json = array(

              "status"=>200,
              "total_registros"=>count($articulos),
              "detalles"=>$articulos
              
            );

            return json_encode($json, true);

          }else{

            $json = array(

              "status"=>200,
              "total_registros"=>0,
              "detalles"=>"No hay ningún curso registrado"
              
            );

          }
        
       
          return json_encode($json, true);

  }
}
