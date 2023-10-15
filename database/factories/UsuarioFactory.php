<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;


/**
 * @extends \Illuminate\Database\Eloquent\Factories\Factory<\App\Models\Usuario>
 */
class UsuarioFactory extends Factory
{

    protected $model = \App\Models\Usuario::class;

    /**
     * Define the model's default state.
     *
     * @return array<string, mixed>
     */
    public function definition(): array
    {
        return [
            'nombre' => $this->faker->name(),
            'apellido' => $this->faker->lastName(),
            'correo' => $this->faker->unique()->safeEmail(),
            'fecha_registro' =>$this->faker->dateTime(),
            'created_at' => date('Y-m-d H:m:s'),
            'updated_at' => date('Y-m-d H:m:s')
        ];
    }
}

/*
$faker = Faker::create();
for ($i = 0; $i < 100; $i++) {
    DB::table('usuarios')->insert(array(
        'nombre' => $faker->firstNameFemale,
        'apellido'  => $faker->randomElement(['chocolate', 'vainilla', 'cheesecake']),
        'correo' => $faker->string,
        'fecha_registro' => $faker->dateTime,
        'created_at' => date('Y-m-d H:m:s'),
        'updated_at' => date('Y-m-d H:m:s')
    ));
} */
