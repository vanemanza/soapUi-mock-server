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
```

## Pasos para Configurar

1. Crear los mocks en SoapUI:
   - Importar los WSDLs en SoapUI
   - Crear y configurar los mock services
   - Configurar las respuestas deseadas

2. Exportar el mock como WAR:
   - Click derecho en el mock service
   - Deploy as WAR
   - Guardar el WAR en la carpeta `war/` como `mock-services.war`

## Uso

1. Construir y levantar el contenedor:
```bash
docker-compose up -d
```

2. Los servicios mock estarán disponibles en:
   http://localhost:8080/

## Detener el Servicio
```bash
docker-compose down
```
