<?php

namespace Database\Seeders;

use Illuminate\Database\Console\Seeds\WithoutModelEvents;
use Illuminate\Database\Seeder;
use App\Models\Usuario;


class UsuarioSeeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        /*         DB::table('usuarios')->insert([
            'nombre' => Str::random(100),
            'apellido'=> Str::random(100),
            'correo'=> Str::random(100).'@gmail.com',
            'fecha_registro' => Str::random(100),
        ]); */
       /*  Usuario::factory()->count(100)->create(); */
        Usuario::factory(100)->create();
    }
};
