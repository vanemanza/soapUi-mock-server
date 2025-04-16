# SoapUI Docker Mock Server

Este proyecto contiene un servidor mock dockerizado para los siguientes servicios SOAP de SUNAT:
- Reconocimiento Físico Service
- Receptor Service

## Estructura del Proyecto
```
.
├── Dockerfile
├── docker-compose.yml
├── war/
│   └── mock-services.war    # Aquí debes colocar el WAR exportado desde SoapUI
└── README.md

- `Dockerfile`: Configuración del contenedor Docker
- `docker-compose.yml`: Configuración de Docker Compose
- `war/`: Directorio que contiene el archivo WAR con los servicios mock

## Generación del WAR

Antes de ejecutar el contenedor, necesitas generar el archivo WAR desde SoapUI:

1. Abre el proyecto en SoapUI
2. Click derecho en el proyecto
3. Selecciona "Deploy as War"
4. Guarda el archivo como `mock-services.war` en el directorio `war/`

## Cómo Usar

1. Asegúrate de tener Docker y Docker Compose instalados
2. Genera el archivo WAR como se indica arriba
3. Ejecuta el contenedor:

```bash
docker-compose up -d
```

4. Los servicios mock estarán disponibles en:
   - http://localhost:8080/

## Detener el Servicio
```bash
docker-compose down
```
