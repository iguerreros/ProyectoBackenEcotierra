<?php

namespace App\Http\Controllers;

use App\Compras;
use App\Clientes;
use App\Articulos;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\DB;

class ComprasController extends Controller{

	public function index(Request $request){
   
    $clientes = Clientes::all();
    $articulos = Articulos::all();
    $json = array();  
   

          if(isset($_GET["id_cliente"])){
            $idCliente = $_GET["id_cliente"]; 
            $compras = DB::table('compras')
            ->join('clientes', 'compras.id_cliente', '=', 'clientes.id')
            ->join('articulos', 'compras.id_articulo', '=', 'articulos.id')
            ->select('compras.id', 'compras.igv', 'compras.total','articulos.nombrearticulo','articulos.preciounitario','clientes.nombre', 'clientes.apellido')
            ->where('compras.id_cliente', '=', $idCliente)
            ->get(10);

          }else{

            $compras = DB::table('compras')
            ->join('clientes', 'compras.id_cliente', '=', 'clientes.id')
            ->join('articulos', 'compras.id_articulo', '=', 'articulos.id')
            ->select('compras.id','compras.id_cliente', 'compras.igv', 'compras.total','articulos.nombrearticulo','articulos.preciounitario','clientes.nombre', 'clientes.apellido')
            ->get();

          }
        
          if(!empty($compras)){

            $json = array(

              "status"=>200,
              "total_registros"=>count($compras),
              "detalles"=>$compras
              
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


  public function store(Request $request){

      $datos = array("id_cliente"=>$request->input("id_cliente"),
                     "id_articulo"=>$request->input("id_articulo"),
                     "subtotal"=>$request->input("subtotal"),
                     "igv"=>$request->input("igv"),
                     "total"=>$request->input("total"));

      if(!empty($datos)){
      
        $validator = Validator::make($datos, [
              'id_cliente' => 'required|string|max:255',
              'id_articulo' => 'required|string|max:255',
              'subtotal' => 'required|string|max:400',
              'igv' => 'required|string|max:25',
              'total' => 'required|string|max:25'
          ]);

      
          if ($validator->fails()) {

            $errors = $validator->errors();
              
              $json = array(
          
            "status"=>404,
            "detalle"=>$errors
          );

          return json_encode($json, true);

          }else{

            $compras = new Compras();
            $compras->id_cliente = $datos["id_cliente"];
            $compras->id_articulo = $datos["id_articulo"];
            $compras->subtotal = $datos["subtotal"];
            $compras->igv = $datos["igv"];
            $compras->total = $datos["total"];

            $compras->save();

            $json = array(
              "status"=>200,
              "detalle"=>"Registro exitoso");

            return json_encode($json, true);

          }

      }else{

        $json = array(

          "status"=>404,
          "detalle"=>"Registro con errores"
        );

        return json_encode($json, true);

      }

  }  
    
}
