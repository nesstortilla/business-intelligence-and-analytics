# 📰 Módulo 1: Analítica de Texto y Web Scraping

Bienvenido a la sección dedicada a **datos no estructurados**. En analítica de negocio muchas veces nos quedamos con la idea de que los datos siempre vienen limpios en una tabla SQL o un CSV exportado por un ERP. La realidad es que gran parte del valor comercial de una empresa vive fuera: opiniones de clientes en portales web, comentarios en redes sociales, noticias del sector financiero o estadísticas abiertas en portales oficiales.

En este módulo paso de la teoría a la práctica y resuelvo los cuatro retos habituales al trabajar con texto y fuentes web:

---

## 🗂️ Contenido de los Notebooks

1. **`01_web_scraping_apis.ipynb`**:
   - **Objetivo**: Extraer información viva de internet sin depender de descargas manuales.
   - **Técnicas**: Construcción de scrapers resistentes usando `BeautifulSoup` y consumo de APIs REST con `requests`. Tratamos cabeceras HTTP (`User-Agent`), manejo de excepciones de conexión y parseo de respuestas JSON complejas (ejemplo Banco de España / Eurostat).
   
2. **`02_text_mining_procesamiento.ipynb`**:
   - **Objetivo**: Convertir cadenas de texto crudas en matrices matemáticas comprensibles por algoritmos.
   - **Técnicas**: Pipeline de limpieza para textos en español (normalización de tildes, signos, minúsculas, filtrado de stopwords personalizadas), cálculo de n-gramas, matrices de co-ocurrencia de términos para capturar contexto semántico y vectorización TF-IDF.

3. **`03_topic_modeling_lda.ipynb`**:
   - **Objetivo**: Descubrir de qué habla la gente sin tener etiquetas previas (aprendizaje no supervisado).
   - **Técnicas**: Implementación de **Latent Dirichlet Allocation (LDA)** con `scikit-learn`. Selección del número de tópicos, visualización de las palabras con mayor peso por temática y asignación probabilística de cada documento a un clúster de conversación.

4. **`04_analisis_sentimiento.ipynb`**:
   - **Objetivo**: Evaluar la percepción de marca y el tono emocional de opiniones de clientes.
   - **Técnicas**: Minería de opinión adaptada al castellano mediante integración de léxicos basados en polaridad y emociones (alegría, enfado, confianza, tristeza). Generación de indicadores cuantitativos (Sentiment Score) para cuadros de mando.

---

## 🛠️ Cómo ponerlo en marcha

```bash
# 1. Instalar dependencias
pip install -r requirements.txt

# 2. Iniciar el entorno de Jupyter
jupyter notebook
```

Los datos utilizados se encuentran disponibles en la subcarpeta `data/` o se generan de forma reproducible y autónoma en cada notebook.
