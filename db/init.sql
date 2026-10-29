-- 1. Tabla de Auditoría de Accesos
CREATE TABLE IF NOT EXISTS access_logs (
    id SERIAL PRIMARY KEY,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    ip_address VARCHAR(45),
    endpoint VARCHAR(255),
    status_code INT
);

-- 2. Tabla de Usuarios (Datos de proba)
CREATE TABLE IF NOT EXISTS users (
    id SERIAL PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Insertar datos iniciais
INSERT INTO users (username, email) VALUES 
('usuario_demo', 'demo@curso.local'),
('admin_test', 'admin@curso.local');

INSERT INTO access_logs (ip_address, endpoint, status_code) VALUES 
('127.0.0.1', '/', 200);

