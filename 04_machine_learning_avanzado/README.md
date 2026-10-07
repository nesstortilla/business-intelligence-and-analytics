# 🚀 Módulo 4: Machine Learning Avanzado y Detección de Fraude

En proyectos empresariales complejos, los algoritmos estándar suelen tropezar con dos problemas críticos:
1. **La maldición de la dimensionalidad y la multicolinealidad**: decenas de variables altamente correlacionadas que provocan que los modelos memoricen ruido en vez de generalizar.
2. **Eventos raros y desbalanceo severo**: en fraude financiero o churn crítico, la clase minoritaria representa menos del 1% del total. Medir el rendimiento con *Accuracy* es un billete seguro al desastre.

En este módulo resolvemos estos retos con técnicas estadísticas avanzadas, métodos de ensamble y matrices de coste económico.

---

## 🗂️ Contenido de los Notebooks

1. **`01_regularizacion_glm.ipynb`**:
   - **Objetivo**: Evitar el sobreajuste y seleccionar automáticamente las variables verdaderamente relevantes.
   - **Técnicas**: Modelos Lineales Generalizados con penalización matemática: **Ridge** (L2 para estabilizar coeficientes ante variables correlacionadas), **Lasso** (L1 para inducir dispersión y selección automática de predictores) y **ElasticNet** con validación cruzada integrada (`ElasticNetCV`).
   
2. **`02_deteccion_fraude_desbalanceado.ipynb`**:
   - **Objetivo**: Detectar transacciones fraudulentas en tarjetas de crédito minimizando las pérdidas económicas del banco.
   - **Técnicas**: Diagnóstico de desbalanceo extremo con el dataset `ccFraud.csv`, remuestreo sintético con **SMOTE**, ajuste de umbrales de decisión mediante curvas **Precision-Recall (PR-AUC)** y diseño de una **Matriz de Coste Financiero** (coste de bloquear a un cliente inocente vs coste de asumir un fraude no detectado).

3. **`03_ensembles_deep_learning.ipynb`**:
   - **Objetivo**: Maximizar la capacidad predictiva combinando modelos débiles y explorando arquitecturas neuronales tabulares.
   - **Técnicas**: Comparativa de Ensembles: Bagging (**Random Forest**) vs Boosting (**Gradient Boosting / HistGradientBoosting**), explicabilidad con *Permutation Importance* y construcción de una red neuronal densa (**MLPClassifier**) con capas ocultas y *Early Stopping*.

---

## 🛠️ Cómo ponerlo en marcha

```bash
# 1. Instalar dependencias
pip install -r requirements.txt

# 2. Iniciar el entorno de Jupyter
jupyter notebook
```

Los datos utilizados se encuentran organizados en la subcarpeta `data/`.
