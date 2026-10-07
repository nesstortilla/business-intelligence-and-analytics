# 🎯 Módulo 3: Minería de Datos en Negocios (Metodología CRISP-DM)

En un departamento de Business Intelligence, un algoritmo no sirve de nada si no responde a una pregunta concreta de la empresa: *¿Qué clientes tienen mayor propensión a contratar este producto? ¿Cómo agrupamos nuestra base de clientes para lanzar campañas de marketing hiperpersonalizadas sin quemar presupuesto?*

En este módulo dejamos atrás los scripts aislados de software académico y construimos un flujo completo de ciencia de datos bajo el estándar **CRISP-DM** (Cross-Industry Standard Process for Data Mining) usando el stack moderno de Python (`pandas`, `scikit-learn`, `seaborn`).

---

## 🗂️ Contenido de los Notebooks

1. **`01_preprocesamiento_crisp_dm.ipynb`**:
   - **Objetivo**: Limpiar y transformar los datos de clientes bancarios garantizando cero fuga de información (*data leakage*).
   - **Técnicas**: Detección e imputación de valores nulos, codificación de variables categóricas (One-Hot Encoding), tratamiento de valores atípicos (*outliers*) mediante rango intercuartílico (IQR) y escalado robusto para algoritmos basados en distancias.
   
2. **`02_clustering_segmentacion.ipynb`**:
   - **Objetivo**: Segmentar la cartera de clientes de forma no supervisada para diseñar ofertas diferenciadas.
   - **Técnicas**: Algoritmo K-Means con determinación del número óptimo de clústeres (Método del Codo y *Silhouette Score*), Clustering Jerárquico Aglomerativo con dendrograma visual, y elaboración de una ficha de perfilado comercial por segmento.

3. **`03_modelos_clasificacion.ipynb`**:
   - **Objetivo**: Predecir qué clientes contratarán un depósito a plazo fijo en una campaña de telemarketing.
   - **Técnicas**: Comparativa de múltiples clasificadores (Regresión Logística con interpretación de *Odds Ratios*, Árbol de Decisión CART interpretable, Naive Bayes y Random Forest). Evaluación mediante validación cruzada estratificada, matrices de confusión, curvas ROC-AUC y análisis de Curva Lift para priorizar llamadas del Call Center.

---

## 🛠️ Cómo ponerlo en marcha

```bash
# 1. Instalar dependencias
pip install -r requirements.txt

# 2. Iniciar el entorno de Jupyter
jupyter notebook
```

Los datos utilizados (`bankdata.csv` y `adult.csv`) se encuentran disponibles en la subcarpeta `data/`.
