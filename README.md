# Machine-Learning-para-pronosticar-demanda-y-planificar-inventarios
En este proyecto se usa un HistGradientXgboostRegressor para planificar la demanda, luego estos pronósticos de ventas de retail de artículos deportivos se compraban con el inventario actual del negocio para planificar las compras de mercancias y satisfacer el cliente.
## Resumen del proyecto
Este proyecto desarrolla una solución integral para forecasting de demanda en retail deportivo, conectando preparación de datos, entrenamiento de modelos y una aplicación local para toma de decisiones operativas.

## Objetivo general
Desarrollar una app que permita gestionar los inventarios y pedidos para optimizar la cadena de suministro de retail deportivo.

## Objetivos específicos
1. Preparar los datos por medio de notebooks.
2. Entrenar los modelos de predicción a partir de Random Forest.
3. Crear una app que permita al retail gestionar sus procesos internos de manera local.

## Alcance funcional
- Preparación y transformación de datos de ventas, precios y calendario.
- Generación de variables temporales y variables rezagadas para predicción.
- Entrenamiento y uso de modelos por categoría de producto.
- Visualización de indicadores de demanda y apoyo a decisiones de inventario.
- Generación de pedidos y exportación de resultados para operación.

## Sección: Preparación de datos
La preparación de datos se realiza con notebooks, donde se ejecutan procesos de limpieza, ingeniería de variables y validación previa al modelado.

Archivos clave:
- [notebooks/Procesamientoypreparacion.ipynb](notebooks/Procesamientoypreparacion.ipynb)
- [notebooks/entrenamiento.ipynb](notebooks/entrenamiento.ipynb)

Tareas principales de esta etapa:
- Integración de fuentes de ventas y competencia.
- Tratamiento de nulos y formatos de fecha.
- Construcción de variables de calendario (año, mes, semana, festivos, etc.).
- Creación de features de rezago (LAG_1 a LAG_7) y media móvil.
- Estructuración del dataset para entrenamiento e inferencia.

## Sección: Documentación (docs)
La carpeta de documentación contiene guías y resultados exportados para evaluación técnica y seguimiento del desempeño de modelos.

Archivos clave:
- [docs/EVALUACION_MODELOS_GUIA.md](docs/EVALUACION_MODELOS_GUIA.md)
- [docs/metricas_evaluacion.csv](docs/metricas_evaluacion.csv)
- [docs/predicciones_fitness.csv](docs/predicciones_fitness.csv)
- [docs/predicciones_outdoor.csv](docs/predicciones_outdoor.csv)
- [docs/predicciones_running.csv](docs/predicciones_running.csv)
- [docs/predicciones_wellness.csv](docs/predicciones_wellness.csv)

## Sección: Datos simulados
El proyecto utiliza datos simulados para representar escenarios realistas de retail deportivo, incluyendo ventas históricas, competencia y estado de inventario.

Fuentes dentro del proyecto:
- [data/raw/entrenamiento/ventas.csv](data/raw/entrenamiento/ventas.csv)
- [data/raw/entrenamiento/competencia.csv](data/raw/entrenamiento/competencia.csv)
- [data/raw/inferencia/ventas_2025_inferencia.csv](data/raw/inferencia/ventas_2025_inferencia.csv)
- [data/processed/df.csv](data/processed/df.csv)
- [data/processed/inventory.csv](data/processed/inventory.csv)

## Sección: Modelos
Los modelos entrenados y serializados se almacenan para su reutilización en inferencia dentro de la app.

Modelos disponibles:
- [models/modelo_fitness.joblib](models/modelo_fitness.joblib)
- [models/modelo_outdoor.joblib](models/modelo_outdoor.joblib)
- [models/modelo_running.joblib](models/modelo_running.joblib)
- [models/modelo_wellness.joblib](models/modelo_wellness.joblib)

Implementación relacionada:
- [app/utilidades_modelos.py](app/utilidades_modelos.py)
- [app/modules/forecast_engine.py](app/modules/forecast_engine.py)

## Sección: Aplicación
La aplicación local está desarrollada con Streamlit y permite operar procesos internos de retail: monitoreo, predicción, inventario y pedidos.

Entrada principal:
- [app/main.py](app/main.py)

Módulos y páginas principales:
- [app/pages/01_Dashboard.py](app/pages/01_Dashboard.py)
- [app/pages/02_Predicción.py](app/pages/02_Predicción.py)
- [app/pages/03_Inventario.py](app/pages/03_Inventario.py)
- [app/pages/04_Pedidos.py](app/pages/04_Pedidos.py)
- [app/modules/inventory_connector.py](app/modules/inventory_connector.py)
- [app/modules/pdf_generator.py](app/modules/pdf_generator.py)
- [app/modules/visualization.py](app/modules/visualization.py)

## Flujo de trabajo del proyecto
1. Preparar datos en notebooks.
2. Entrenar y validar modelos de forecasting.
3. Exportar modelos y resultados.
4. Integrar modelos en la app local.
5. Usar dashboard, predicción, inventario y pedidos para soporte operativo.

## Estado actual
- Preparación de datos: completada.
- Modelado y artefactos: disponibles en carpeta de modelos.
- App local: funcional y lista para ejecución en entorno local.

## Ejecución local de la app
1. Abrir terminal en la raíz del proyecto.
2. Activar entorno virtual.
3. Ejecutar la app con:

python -m streamlit run app/main.py
o usando el arraque rapido:
-[ForecastingVentas](arrancar_app.bat)
