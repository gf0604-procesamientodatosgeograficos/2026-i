# Tarea 01 – Juego del pez y las estrellas

**Curso**: GF-0604 Procesamiento de datos geográficos
**Grupo**: 002
**Fecha de entrega**: [FECHA]

---

## Descripción

Desarrolle en [Scratch](https://scratch.mit.edu/) un juego llamado **"El pez y las estrellas"**, basado en el juego del gato y la manzana visto en clase. En este juego, un pez debe recoger estrellas de mar que aparecen en posiciones aleatorias del escenario antes de que se agote el tiempo. El juego debe integrar elementos de los tres ejercicios del capítulo 01: el programa "Hola mundo" (incluyendo la extensión **Texto a voz**), el dibujo de un paisaje (usando **bloques propios**) y la creación de un juego (con **cuenta regresiva** y **efectos** al recoger objetos).

---

## Requisitos

### 1. Dibujo con la extensión Lápiz y bloques propios (conexión con "Dibujar un paisaje")
- Al inicio del juego (al presionar la bandera verde), se debe **dibujar olas** (una serie de triángulos repetidos en la parte inferior del escenario, simulando el mar) utilizando la extensión **Lápiz**.
- El dibujo debe implementarse mediante **al menos un bloque propio** (función personalizada en la sección "Mis bloques") con parámetros. Por ejemplo: un bloque `dibujar_ola(x, y, tamaño)` que reciba la posición y el tamaño de cada ola, y se llame varias veces para dibujar la serie completa.
- Las olas deben dibujarse de forma visible antes de que el pez comience a moverse.

### 2. Mecánica del juego (conexión con "Creación de un juego")
- **Sprites**: Cambie los sprites del juego original. Use un **pez** como personaje principal y una **estrella de mar** como objeto a recoger (puede elegir sprites de la biblioteca de Scratch o dibujar los propios).
- **Movimiento**: El pez se mueve con las **flechas de dirección** del teclado (arriba, abajo, izquierda, derecha).
- **Detección de colisiones con efecto**: Cuando el pez toque la estrella de mar, se debe detectar la colisión. Al detectarla, además de sumar un punto, se debe producir un **efecto**: cambiar brevemente el disfraz de la estrella, reproducir un sonido, o aplicar un efecto gráfico (por ejemplo, el efecto *desvanecer*).
- **Reubicación**: Al ser recogida, la estrella de mar debe moverse a una **posición aleatoria** dentro del escenario.
- **Puntuación**: Una variable llamada `Puntos` debe comenzar en 0 y aumentar en 1 cada vez que el pez recoge una estrella.
- **Cuenta regresiva**: Una variable llamada `Tiempo` debe comenzar en **40** y disminuir en 1 cada segundo (como un cronómetro regresivo).
- **Fin del juego**: El juego termina cuando la persona jugadora alcance **15 puntos** (¡victoria!) o cuando el tiempo llegue a **0** (¡se acabó el tiempo!). En ambos casos, se debe mostrar un mensaje apropiado.

### 3. Mensaje de despedida (conexión con "Hola mundo")
- Al finalizar el juego (al alcanzar los 15 puntos o al agotarse el tiempo), el pez debe **decir un mensaje** utilizando el bloque *decir* de la sección Apariencia (por ejemplo: "¡Gracias por jugar! Recogí todas las estrellas" o "¡Se acabó el tiempo!").
- Además, el pez debe **pronunciar** un mensaje usando la extensión **Texto a voz** (bloque *decir en voz alta*). Puede ser la misma frase u otra diferente.
- El mensaje debe mostrarse y pronunciarse durante al menos 2 segundos.

---

## Entregables

Cada persona estudiante debe entregar:

1. **Archivo `.sb3`**: El proyecto de Scratch con el juego funcional, guardado desde *Archivo > Guardar en tu computador*.

2. **Documento con descripción del pensamiento computacional aplicado**: Un documento (en formato PDF, DOCX o similar) que describa cómo se aplicaron los cuatro pilares del pensamiento computacional en el desarrollo del juego:

   - **Descomposición**: ¿En qué subproblemas se dividió el problema principal? (por ejemplo: dibujar las olas con bloque propio, mover el pez, detectar colisiones con efecto, manejar la cuenta regresiva, mostrar y pronunciar el mensaje de despedida, etc.)
   - **Reconocimiento de patrones**: ¿Qué patrones se identificaron? (por ejemplo: el movimiento con flechas sigue un patrón repetitivo, el ciclo de recoger y reubicar se repite, el bloque propio permite reutilizar el mismo patrón de dibujo para cada ola, etc.)
   - **Abstracción**: ¿Qué información es relevante y cuál se puede ignorar? (por ejemplo: las coordenadas (x, y) del pez y de la estrella son relevantes; los colores del escenario no lo son. El bloque propio abstrae los detalles del dibujo de cada ola, etc.)
   - **Diseño de algoritmos**: Describa paso a paso el algoritmo general del juego, desde el inicio hasta el fin, incluyendo la lógica de la cuenta regresiva.

---

## Rúbrica de evaluación

| Criterio | Descripción | Puntos |
|---|---|---:|
| **Mensaje con *decir* + Texto a voz** | El pez muestra un mensaje con el bloque *decir* y además lo pronuncia con la extensión Texto a voz. | 10 |
| **Dibujo con Lápiz usando bloque propio** | Se dibujan olas visibles usando la extensión Lápiz, implementadas con al menos un bloque propio con parámetros. | 15 |
| **Sprites personalizados** | Se utilizan un pez y una estrella de mar como sprites del juego (no el gato ni la manzana originales). | 10 |
| **Movimiento con teclado** | El pez se desplaza correctamente con las cuatro flechas de dirección. | 10 |
| **Detección de colisiones + efecto** | Se detecta correctamente cuándo el pez toca la estrella de mar y se produce un efecto (cambio de disfraz, sonido o efecto gráfico). | 10 |
| **Reubicación aleatoria** | La estrella de mar se mueve a una posición aleatoria cada vez que es recogida. | 10 |
| **Sistema de puntuación** | La variable `Puntos` se inicializa en 0 y aumenta en 1 con cada colisión. | 10 |
| **Cuenta regresiva y fin del juego** | El juego incluye una cuenta regresiva de 40 segundos y termina correctamente al alcanzar 15 puntos o al agotarse el tiempo, mostrando un mensaje apropiado. | 10 |
| **Pensamiento computacional** | El documento describe adecuadamente la descomposición, patrones, abstracción y algoritmo. | 15 |
| **Total** | | **100** |
