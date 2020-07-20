<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use Illuminate\Support\Facades\Hash;
use App\Clientes;

class ClientesController extends Controller {

	public function index(Request $request){

	       $clientes = Clientes::all();
	       $json = array();  

	        if(!empty($clientes)){

	            $json = array(

	              "status"=>200,
	              "total_registros"=>count($clientes),
	              "detalles"=>$clientes
	              
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

    	$datos = array("nombre"=>$request->input("nombre"),
    				   "apellido"=>$request->input("apellido"),
    				   "edad"=>$request->input("edad"),
    				   "fechanacimiento"=>$request->input("fechanacimiento"));

    	if(!empty($datos)){
    	
	    	$validator = Validator::make($datos, [
	            'nombre' => 'required|string|max:255',
	            'apellido' => 'required|string|max:255',
	            'edad' => 'required|string|max:4',
	            'fechanacimiento' => 'required|string|max:25'
	        ]);

	    
	        if ($validator->fails()) {

	        	$errors = $validator->errors();
	          	
	          	$json = array(
	    		
	    			"status"=>404,
	    			"detalle"=>$errors
		    	);

		    	return json_encode($json, true);

	        }else{

	        	$id_cliente = Hash::make($datos["nombre"].$datos["apellido"].$datos["fechanacimiento"]);
	        	$llave_secreta = Hash::make($datos["apellido"].$datos["nombre"], ['rounds' => 12]);

	        	$cliente = new Clientes();
	        	$cliente->nombre = $datos["nombre"];
	        	$cliente->apellido = $datos["apellido"];
	        	$cliente->edad = $datos["edad"];
	        	$cliente->fechanacimiento = $datos["fechanacimiento"];
	        	$cliente->id_cliente = str_replace('$', 'a', $id_cliente);
	        	$cliente->llave_secreta = str_replace('$', 'o', $llave_secreta);

	        	$cliente->save();

	        	$json = array(

		    		"status"=>200,
		    		"detalle"=>"Registro exitoso, tome sus credenciales y guardelas",
		    		"credenciales"=>array("id_cliente"=>str_replace('$', 'a', $id_cliente), "llave_secreta"=>str_replace('$', 'o', $llave_secreta))
		    		
		    	);

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
