<?php

namespace App\Http\Controllers;

use App\Models\Usuario;
use Illuminate\Http\Request;

class UsuarioController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    /* Mostrar los usuarios */
    public function index()
    {
        $usuario = new Usuario();
        return $usuario->all();
    }


    /**
     * Store a newly created resource in storage.
     */
    /* Crear usuarios */
    public function store(Request $request)
    {
        $usuario = new Usuario();
        $usuario->nombre = $request->nombre;
        $usuario->apellido = $request->apellido;
        $usuario->correo = $request->correo;
        $usuario->fecha_registro = $request->fecha_registro;
        $usuario->save();
        return "Registro se ha creado correctamente";
    }

    /**
     * Display the specified resource.
     */
    /*Recibe el ID de un usuario y que muestra sus detalles */
    public function show(string $id)
    {
        return Usuario::where('id',$id)->get();
    }


    /**
     * Update the specified resource in storage.
     */
    /* Actualizar */
    public function update(Request $request, string $id)
    {
        $usuario = Usuario::find($id);
        $usuario->nombre = $request->nombre;
        $usuario->apellido = $request->apellido;
        $usuario->correo = $request->correo;
        $usuario->fecha_registro = $request->fecha_registro;
        $usuario->save();
        return $usuario;
    }

    /**
     * Remove the specified resource from storage.
     */
    /* Eliminar usuarios */
    public function destroy(string $id)
    {
        $usuario = Usuario::find($id);
        $usuario->delete();
        return "Eliminado correctamente";
    }
}
