CREATE TABLE usuarios(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    email VARCHAR(80) NOT NULL UNIQUE,
    rol VARCHAR(20) NOT NULL
);
CREATE TABLE eventos(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(80) NOT NULL,
    fecha_evento DATETIME NOT NULL,
    capacidad_total INT NOT NULL,
    entradas_disponibles INT NOT NULL,
    precio DECIMAL(10,2) NOT NULL
);
CREATE TABLE reservas(
    id BIGINT AUTO_INCREMENT PRIMARY KEY,
    usuario_id BIGINT NOT NULL,
    evento_id BIGINT NOT NULL,
    cantidad_entradas INT NOT NULL,
    precio_total DECIMAL(10,2) NOT NULL,
    fecha_compra DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (usuario_id) REFERENCES usuarios(id),
    FOREIGN KEY (evento_id) REFERENCES eventos(id)
);