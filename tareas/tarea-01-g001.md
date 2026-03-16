# Tarea 01 – Juego del perro y los huesos

**Curso**: GF-0604 Procesamiento de datos geográficos
**Grupo**: 001
**Fecha de entrega**: [FECHA]

---

## Descripción

Desarrolle en [Scratch](https://scratch.mit.edu/) un juego llamado **"El perro y los huesos"**, basado en el juego del gato y la manzana visto en clase. En este juego, un perro debe recoger huesos que aparecen en posiciones aleatorias del escenario antes de que se agote el tiempo. El juego debe integrar elementos de los tres ejercicios del capítulo 01: el programa "Hola mundo" (incluyendo la extensión **Texto a voz**), el dibujo de un paisaje (usando **bloques propios**) y la creación de un juego (con **cuenta regresiva** y **efectos** al recoger objetos).

---

## Requisitos

### 1. Mensaje de bienvenida (conexión con "Hola mundo")
- Al iniciar el juego (al presionar la bandera verde), el perro debe **decir una frase de bienvenida** utilizando el bloque *decir* de la sección Apariencia (por ejemplo: "¡Hola! Ayúdame a recoger los huesos").
- Además, el perro debe **pronunciar** un mensaje usando la extensión **Texto a voz** (bloque *decir en voz alta*). Puede ser la misma frase u otra diferente.
- La frase debe mostrarse y pronunciarse durante al menos 2 segundos antes de que comience el juego.

### 2. Dibujo con la extensión Lápiz y bloques propios (conexión con "Dibujar un paisaje")
- Al inicio del juego, se debe **dibujar una casita** (un cuadrado con un triángulo como techo) en el escenario utilizando la extensión **Lápiz**.
- El dibujo debe implementarse mediante **al menos un bloque propio** (función personalizada en la sección "Mis bloques") con parámetros. Por ejemplo: un bloque `dibujar_cuadrado(x, y, lado)` que reciba la posición y el tamaño, o un bloque `dibujar_casita(x, y, lado)` que dibuje la casa completa.
- La casita debe dibujarse de forma visible antes de que el perro comience a moverse.

### 3. Mecánica del juego (conexión con "Creación de un juego")
- **Sprites**: Cambie los sprites del juego original. Use un **perro** como personaje principal y un **hueso** como objeto a recoger (puede elegir sprites de la biblioteca de Scratch o dibujar los propios).
- **Movimiento**: El perro se mueve con las **flechas de dirección** del teclado (arriba, abajo, izquierda, derecha).
- **Detección de colisiones con efecto**: Cuando el perro toque el hueso, se debe detectar la colisión. Al detectarla, además de sumar un punto, se debe producir un **efecto**: cambiar brevemente el disfraz del hueso, reproducir un sonido, o aplicar un efecto gráfico (por ejemplo, el efecto *desvanecer*).
- **Reubicación**: Al ser recogido, el hueso debe moverse a una **posición aleatoria** dentro del escenario.
- **Puntuación**: Una variable llamada `Puntos` debe comenzar en 0 y aumentar en 1 cada vez que el perro recoge un hueso.
- **Cuenta regresiva**: Una variable llamada `Tiempo` debe comenzar en **30** y disminuir en 1 cada segundo (como un cronómetro regresivo).
- **Fin del juego**: El juego termina cuando la persona jugadora alcance **10 puntos** (¡victoria!) o cuando el tiempo llegue a **0** (¡se acabó el tiempo!). En ambos casos, se debe mostrar un mensaje apropiado (por ejemplo: "¡Ganaste! Recogiste todos los huesos" o "¡Se acabó el tiempo!").

---

## Entregables

Cada persona estudiante debe entregar:

1. **Archivo `.sb3`**: El proyecto de Scratch con el juego funcional, guardado desde *Archivo > Guardar en tu computador*.

2. **Documento con descripción del pensamiento computacional aplicado**: Un documento (en formato PDF, DOCX o similar) que describa cómo se aplicaron los cuatro pilares del pensamiento computacional en el desarrollo del juego:

   - **Descomposición**: ¿En qué subproblemas se dividió el problema principal? (por ejemplo: dibujar la casita, mostrar y pronunciar el mensaje, mover el perro, detectar colisiones con efecto, manejar la cuenta regresiva, etc.)
   - **Reconocimiento de patrones**: ¿Qué patrones se identificaron? (por ejemplo: el movimiento con flechas sigue un patrón repetitivo, el ciclo de recoger y reubicar se repite, el bloque propio permite reutilizar el mismo patrón de dibujo, etc.)
   - **Abstracción**: ¿Qué información es relevante y cuál se puede ignorar? (por ejemplo: las coordenadas (x, y) del perro y del hueso son relevantes; los colores del escenario no lo son. El bloque propio abstrae los detalles del dibujo, etc.)
   - **Diseño de algoritmos**: Describa paso a paso el algoritmo general del juego, desde el inicio hasta el fin, incluyendo la lógica de la cuenta regresiva.

---

## Rúbrica de evaluación

| Criterio | Descripción | Puntos |
|---|---|---:|
| **Mensaje con *decir* + Texto a voz** | El perro muestra una frase de bienvenida con el bloque *decir* y además la pronuncia con la extensión Texto a voz. | 10 |
| **Dibujo con Lápiz usando bloque propio** | Se dibuja una casita visible usando la extensión Lápiz, implementada con al menos un bloque propio con parámetros. | 15 |
| **Sprites personalizados** | Se utilizan un perro y un hueso como sprites del juego (no el gato ni la manzana originales). | 10 |
| **Movimiento con teclado** | El perro se desplaza correctamente con las cuatro flechas de dirección. | 10 |
| **Detección de colisiones + efecto** | Se detecta correctamente cuándo el perro toca el hueso y se produce un efecto (cambio de disfraz, sonido o efecto gráfico). | 10 |
| **Reubicación aleatoria** | El hueso se mueve a una posición aleatoria cada vez que es recogido. | 10 |
| **Sistema de puntuación** | La variable `Puntos` se inicializa en 0 y aumenta en 1 con cada colisión. | 10 |
| **Cuenta regresiva y fin del juego** | El juego incluye una cuenta regresiva de 30 segundos y termina correctamente al alcanzar 10 puntos o al agotarse el tiempo, mostrando un mensaje apropiado. | 10 |
| **Pensamiento computacional** | El documento describe adecuadamente la descomposición, patrones, abstracción y algoritmo. | 15 |
| **Total** | | **100** |
