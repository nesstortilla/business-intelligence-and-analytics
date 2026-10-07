# 📊 Business Intelligence & Data Science Portfolio

¡Hola! Soy **Néstor León**, graduado en **Business Intelligence and Analytics**. 

Este repositorio reúne los proyectos analíticos y modelos de ciencia de datos que desarrollé a lo largo de mi carrera universitaria, modernizados y refactorizados a un stack 100% **Python** y **SQL**. El objetivo de este portfolio es mostrar cómo abordar problemas cuantitativos de principio a fin: desde la ingesta de datos sucios o no estructurados hasta la puesta en marcha de modelos predictivos y el diseño de almacenes de datos analíticos orientados a la toma de decisiones.

---

## 🧭 Mapa de Proyectos

El repositorio está organizado en 5 módulos especializados, cada uno con sus propios Jupyter Notebooks explicados paso a paso, dependencias y datos de prueba:

```
proyectos_python_github/
│
├── 📁 01_analitica_texto_webscraping/    # NLP, Web Scraping, APIs públicas y Topic Modeling (LDA)
├── 📁 02_prediccion_series_temporales/   # Forecasting clásico, Suavizado Holt-Winters y SARIMAX
├── 📁 03_mineria_datos_negocio/          # Metodología CRISP-DM, Segmentación (K-Means/Jerárquico) y Clasificación
├── 📁 04_machine_learning_avanzado/      # Regularización GLM, Detección de Fraude desbalanceado y Ensembles
└── 📁 05_almacenes_datos_bi/             # Modelado Dimensional (Kimball), ETL con Python y Consultas OLAP en SQL
```

---

## 🛠️ Stack Tecnológico & Habilidades Clave

- **Lenguajes**: Python 3.10+, SQL (ANSI / DuckDB / SQLite / PostgreSQL).
- **Manipulación & Almacenamiento**: `pandas`, `numpy`, `SQLAlchemy`, `DuckDB`.
- **Machine Learning & Modelado**: `scikit-learn`, `imbalanced-learn`, `xgboost`, `statsmodels`, `pmdarima`.
- **NLP & Ingesta No Estructurada**: `nltk`, `spaCy`, `BeautifulSoup4`, `requests`.
- **Visualización & Storytelling**: `matplotlib`, `seaborn`.
- **Arquitectura & Metodología**: Modelado Dimensional (Star Schema de Kimball), CRISP-DM, Validación Cruzada Estratificada, Optimización de Métricas de Negocio (PR-AUC, Curvas Lift, Cost-Matrix).

---

## 📂 Detalle de los Módulos

### [1. Analítica de Texto y Web Scraping](file:///Users/nestor/Desktop/analizar/proyectos_python_github/01_analitica_texto_webscraping)
Extracción y procesamiento de información desestructurada para inteligencia de mercado.
- **Web Scraping & APIs**: Scrapers resilientes con `BeautifulSoup` y clientes HTTP para APIs de organismos oficiales (INE, Eurostat, Banco de España).
- **Text Mining**: Pipelines de limpieza, matrices de co-ocurrencia y representaciones vectoriales TF-IDF.
- **Topic Modeling**: Modelado probabilístico de temáticas latentes con `LatentDirichletAllocation`.
- **Análisis de Sentimiento**: Clasificación de polaridad y emociones adaptadas al castellano.

### [2. Predicción con Series Temporales](file:///Users/nestor/Desktop/analizar/proyectos_python_github/02_prediccion_series_temporales)
Modelado de demanda, consumo eléctrico y variables macroeconómicas con enfoque de pronóstico.
- **EDA & Descomposición**: Detección de tendencia, estacionalidad aditiva/multiplicativa y tests de estacionariedad (ADF).
- **Suavizado Exponencial**: Modelos Simple, Holt y Holt-Winters para captura de patrones estacionales.
- **Modelado Box-Jenkins (SARIMAX)**: Identificación de órdenes autorregresivos e integrados, diagnóstico de residuos con Ljung-Box y benchmarking de error (RMSE / MAE / MAPE).

### [3. Minería de Datos en Negocios](file:///Users/nestor/Desktop/analizar/proyectos_python_github/03_mineria_datos_negocio)
Aplicación práctica del ciclo de vida CRISP-DM para responder preguntas de negocio reales.
- **Preprocesamiento Profesional**: Imputación de nulos, tratamiento de outliers y codificación de variables de clientes bancarios.
- **Segmentación de Clientes**: Estrategia de clustering (K-Means y Jerárquico Aglomerativo) con validación mediante Silhouette Score y análisis de valor por segmento.
- **Modelos de Propensión**: Árboles CART, Regresión Logística y Naive Bayes evaluados con matrices de confusión y curvas Lift.

### [4. Machine Learning Avanzado](file:///Users/nestor/Desktop/analizar/proyectos_python_github/04_machine_learning_avanzado)
Técnicas avanzadas para situaciones complejas: alta dimensionalidad y eventos raros.
- **Regularización GLM**: Lasso, Ridge y ElasticNet para selección de variables y mitigación de multicolinealidad.
- **Detección de Fraude en Tarjetas de Crédito**: Manejo de clases fuertemente desbalanceadas (< 1% de fraude), aplicación de SMOTE, curvas PR-AUC y definición de matrices de coste financiero.
- **Ensembles & Redes Neuronales**: Comparativa entre Random Forest, Gradient Boosting y Perceptrón Multicapa (MLP) con análisis de importancia de características.

### [5. Explotación de Almacenes de Datos y BI](file:///Users/nestor/Desktop/analizar/proyectos_python_github/05_almacenes_datos_bi)
Fundamentos de ingeniería de datos y analítica OLAP para arquitecturas de Business Intelligence.
- **Modelado Dimensional**: Implementación del esquema en estrella (Ralph Kimball) conectando hechos de ventas con dimensiones de tiempo, cliente, tienda y geografía.
- **Pipeline ETL en Python**: Extracción desde fuentes heterogéneas, normalización, generación de claves subrogadas y persistencia en base de datos relacional.
- **Consultas Analíticas OLAP**: Uso de agregaciones multidimensionales (`ROLLUP`, `CUBE`, `GROUPING SETS`) y funciones de ventana para reporting ejecutivo.

---

## 🚀 Cómo ejecutar los proyectos localmente

1. Clona el repositorio en tu máquina:
   ```bash
   git clone https://github.com/nesstortilla/business-intelligence-and-analytics.git
   cd business-intelligence-and-analytics
   ```

2. Crea y activa un entorno virtual de Python:
   ```bash
   python3 -m venv venv
   source venv/bin/activate    # En Windows: venv\Scripts\activate
   ```

3. Cada subcarpeta contiene su propio `requirements.txt`. Para instalar las dependencias de un módulo específico:
   ```bash
   cd 01_analitica_texto_webscraping
   pip install -r requirements.txt
   jupyter notebook
   ```

---

## 📬 Contacto & Enlaces
- **GitHub**: [github.com/nesstortilla](https://github.com/nesstortilla)

