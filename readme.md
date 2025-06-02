# **Clasificación de Ríos Atmosféricos con Explicabilidad**

**EQUIPO**
- Jocelyn Lugo.
- Pía Aedo.
- Alexis Alva.
- Etienne Rojas.


## **Descripción**
Este proyecto desarrolla modelos de clasificación para identificar ríos atmosféricos, aplicando técnicas de explicabilidad (XAI) para entender el comportamiento de los modelos. Estamos en la primera fase de desarrollo con los siguientes logros:

### **1. exploración de datos (EDA)**
- Análisis de características y distribución de los datos.
- Verificación de datos nulos.
- Matriz de correlación
- Análisis del balance de clases.
- Distribución geográfica.

### **2. modelos implementados**
- Modelo baseline SVM
- Modelo optimizado XGBoost

### **3. técnicas de explicabilidad**
- Implementación de SHAP para ambos modelos.
- Visualización de *Summary Plot, Dependence Plot, Force Plot*.

## **Evaluación de los Modelos**

### **Modelo Baseline**
 Métrica         | Clase 0 | Clase 1 | Accuracy | Macro Avg | Weighted Avg |
|-----------------|---------|---------|----------|-----------|--------------|
| **Precisión**   | 0.00    | 0.72    | 0.72     | 0.36      | 0.52         |
| **Recall**      | 0.00    | 1.00    |          | 0.50      | 0.72         |
| **F1-Score**    | 0.00    | 0.84    |          | 0.42      | 0.61         |
| **Soporte**     | 10      | 26      | 36       | 36        | 36           |

**Análisis SVM:**
- Problemas graves con la clase minoritaria (0): 
  - **Precisión 0%** y **Recall 0%** para la clase 0
  - Clasifica todos los casos como clase 1 (Recall 100%)
- Buen rendimiento en clase mayoritaria (1) con F1-Score de 0.84
- Accuracy engañoso (72%) debido al desbalance de clases
- F1-Score macro muy bajo (0.42) indica problemas de generalización

### **Modelo Optimizado**
| Métrica         | Clase 0 | Clase 1 | Accuracy | Macro Avg | Weighted Avg |
|-----------------|---------|---------|----------|-----------|--------------|
| **Precisión**   | 0.62    | 0.82    | 0.78     | 0.72      | 0.77         |
| **Recall**      | 0.50    | 0.88    |          | 0.69      | 0.78         |
| **F1-Score**    | 0.56    | 0.85    |          | 0.70      | 0.77         |
| **Soporte**     | 10      | 26      | 36       | 36        | 36           |

**Análisis XGBoost:**
- Mejora significativa en clase minoritaria (0):
  - Precisión del **62%** y Recall del **50%**
  - F1-Score de 0.56 (vs 0.00 en SVM)
- Mantiene buen rendimiento en clase mayoritaria (F1-Score 0.85)
- Accuracy más confiable (78%) 
- F1-Score macro mejorado (de 0.42 a 0.70)
- Mejor equilibrio entre clases (Weighted Avg F1 de 0.77 vs 0.61)

# **Próximos Pasos**

- experimentar con más modelos.
- aplicar más técnicas de explicabilidad.
- análisis comparativo de técnicas de XAI.
- interpretación de los resultados.
