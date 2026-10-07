# 📈 Módulo 2: Predicción con Series Temporales (Time Series Forecasting)

Hacer previsiones de series temporales no es simplemente "tirar una línea hacia el futuro". En el mundo real (gestión de stock, dimensionamiento de servidores, aprovisionamiento eléctrico o previsión financiera), un error del 5% puede suponer cientos de miles de euros en roturas de stock o sobrecostes logísticos.

Este módulo aborda la predicción temporal con rigor estadístico y visión de negocio, pasando de los fundamentos de descomposición temporal a modelos robustos de suavizado y la familia **ARIMA / SARIMAX**.

---

## 🗂️ Contenido de los Notebooks

1. **`01_eda_descomposicion_series.ipynb`**:
   - **Objetivo**: Conocer la anatomía de la serie antes de tirar una sola línea de modelo predictivo.
   - **Técnicas**: Inspección visual de tendencias y estacionalidades, funciones de autocorrelación simple y parcial (ACF y PACF), contraste formal de estacionariedad (Augmented Dickey-Fuller - ADF) y descomposición en componentes (tendencia, estacionalidad y residuo) tanto aditiva como multiplicativa.
   
2. **`02_modelos_exponenciales_holt_winters.ipynb`**:
   - **Objetivo**: Implementar modelos de suavizado exponencial rápidos, interpretables y con excelente rendimiento para horizontes de corto y medio plazo.
   - **Técnicas**: Suavizado Exponencial Simple (SES), modelo de Holt (tendencia lineal y amortiguada) y modelo Holt-Winters (captura de estacionalidad aditiva/multiplicativa). Calibración de parámetros de alisado (alfa, beta, gamma) y evaluación en un conjunto de validación temporal sin fuga de datos (*data leakage*).

3. **`03_modelado_arima_sarimax.ipynb`**:
   - **Objetivo**: Construir y validar modelos estocásticos siguiendo el ciclo clásico de Box-Jenkins y automatización con `auto_arima`.
   - **Técnicas**: Estacionarización mediante diferenciación regular y estacional, ajuste de modelos SARIMA(p,d,q)(P,D,Q)s, validación de residuos (test de Ljung-Box para asegurar ruido blanco) y tabla comparativa de métricas de precisión: RMSE, MAE y MAPE.

---

## 🛠️ Cómo ponerlo en marcha

```bash
# 1. Instalar dependencias
pip install -r requirements.txt

# 2. Iniciar el entorno de Jupyter
jupyter notebook
```

Los conjuntos de datos utilizados (consumo eléctrico, demanda y series macroeconómicas) se encuentran organizados en la subcarpeta `data/`.
