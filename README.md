# SoapUI Docker Mock Server

Este proyecto contiene un servidor mock dockerizado.

## Estructura del Proyecto
```
.
├── Dockerfile
├── docker-compose.yml
├── war/
│   └── mock-services.war    # Aquí debes colocar el WAR exportado desde SoapUI
└── README.md
```

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
   - Localmente: http://localhost:8080/mockSalidaAlmacen
   - Desde otros contenedores: http://sunat-mock:8080/mockSalidaAlmacen

## Conectar con Otras Aplicaciones Docker

Este servicio mock crea una red Docker llamada `soap-mock-network`. Para conectar otra aplicación dockerizada:

1. Agrega la red en el `docker-compose.yml` de tu aplicación:

```yaml
services:
  tu-app:
    # ... otras configuraciones ...
    networks:
      - soap-mock-network

networks:
  soap-mock-network:
    external: true
    name: soap-mock-network
```

2. Consume el servicio mock usando el hostname `sunat-mock`:
```
http://sunat-mock:8080/mockSalidaAlmacen
```

## Detener el Servicio
```bash
docker-compose down
```
