create procedure suma_dos_numeros (in num1 INT, in num2 INT, out resultado INT)
begin
	set resultado = num1 + num2;
end

create procedure insert_trabajadores(in n_nombre varchar(250), in n_correo varchar(250), in n_direccion varchar(250),in n_telefono varchar(250))
begin
	insert into trabajadores(nombre, correo, direccion, telefono) values (n_nombre, n_correo, n_direccion, n_telefono);
end

call insert_trabajadores("Martin  Blank", "martinblank@mail.com", "Via Monte Bianco 34, Turin, Italy", "(480) 631-2097");









