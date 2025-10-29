use base_datos;
CREATE TABLE usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    contrasena VARCHAR(255) NOT NULL,
    rol VARCHAR(50) NOT NULL,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
CREATE TABLE productos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(255) NOT NULL,
    descripcion TEXT,
    precio DECIMAL(10, 2) NOT NULL,
    stock INT NOT NULL,
    categoria VARCHAR(100),
    imagen VARCHAR(255),
    estado ENUM('Activo', 'Inactivo') DEFAULT 'Activo',
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

insert into usuarios (id, nombre, email, contrasena, rol, fecha_creacion) values (1, "Teresa Basaure", "teresita_1121@gmail.com" "martina17");
insert into usuarios (id, nombre, email, contrasena, rol, fecha_creacion) values (3, "Martina Basaure", "jesus_345@gmail.com" "lero32456");
insert into productos (id, nombre, descripcion, precio, stock, categoria, estado, fecha_creacion, imagen) values (1, "papel fotografico", "impresion papel fotografico", 600, 200, 'Activo');