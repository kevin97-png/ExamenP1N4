
CREATE TABLE trabajadores (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(250) NOT NULL,
    correo VARCHAR(250) UNIQUE NOT NULL,
    direccion VARCHAR(250) NOT NULL,
    telefono VARCHAR(250) NOT NULL
);

CREATE PROCEDURE insert_trabajadores( n_nombre VARCHAR(250),  n_correo VARCHAR(250), n_direccion VARCHAR(250), in n_telefono VARCHAR(250))
BEGIN
    INSERT INTO trabajadores(nombre, correo, direccion, telefono) VALUES n_nombre, n_correo, n_direccion, n_telefono;
end;

call insert_trabajadores("Thomas Hardy", "thomashardy@mail.com", "89 Chiaroscuro RD Portland, USA", "(171)555-2222");