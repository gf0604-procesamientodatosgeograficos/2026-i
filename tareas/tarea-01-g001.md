# Tarea 1 – Grupo 1 {.unnumbered}

**Fecha y hora límite de entrega:**  
Miércoles 25 de marzo a las 3:00 p.m. a través de Mediación Virtual.

**Esta tarea es estrictamente individual. Cada estudiante puede consultar los materiales del curso y también recursos externos (ej. tutoriales, videos) para resolverla, pero debe ser capaz de demostrar que es la autora o el autor de la solución entregada y de explicarla detalladamente en caso de que el profesor lo solicite.**

---

## Descripción

Desarrolle en [Scratch](https://scratch.mit.edu/) un juego llamado **"El perro y sus juguetes"**. En este juego, un perro debe recoger un juguete (ej. una pelota) que aparece en posiciones aleatorias del escenario antes de que se agote el tiempo o se alcance un puntaje determinado.

---

## Requisitos

### 1. Mensaje de bienvenida
- Al iniciar el juego (al presionar la bandera verde), el perro debe **decir una frase de bienvenida** utilizando el bloque *decir* de la sección Apariencia (por ejemplo: "¡Hola! Ayudame a recoger mis juguetes"). La frase debe mostrarse durante al menos 2 segundos antes de que comience el juego.
- Además, el perro debe **pronunciar** un mensaje usando la extensión **Texto a voz** (bloque *decir en voz alta*). Puede ser la misma frase u otra diferente.

### 2. Dibujo con la extensión Lápiz y bloques propios
- Al inicio del juego, se debe **dibujar una casa para perros** en el escenario utilizando la extensión **Lápiz**.
- El dibujo debe implementarse mediante **bloques propios** (bloques personalizados en la sección "Mis bloques") con datos de entrada.
- La casa del perro debe dibujarse antes de que el perro comience a moverse.

### 3. Mecánica del juego
- **Sprites**: Use un **perro** como personaje principal y un **juguete** como objeto a recoger (puede elegir sprites de la biblioteca de Scratch o dibujar los propios).
- **Movimiento**: El perro se mueve con las **flechas de dirección** del teclado (arriba, abajo, izquierda, derecha).
- **Detección de colisiones con efecto**: Cuando el perro toque el juguete, se debe detectar la colisión. Al detectarla, además de sumar un punto, se debe producir un **efecto**: cambiar brevemente el disfraz del juguete, reproducir un sonido, o aplicar un efecto gráfico (por ejemplo, el efecto *desvanecer*).
- **Reubicación**: Al ser recogido, el juguete debe moverse a una **posición aleatoria** dentro del escenario.
- **Puntuación**: Una variable llamada `Puntos` debe comenzar en 0 y aumentar en 1 cada vez que el perro recoge un juguete.
- **Cuenta regresiva**: Una variable llamada `Tiempo` debe comenzar en **30** (u otro número de su elección) y disminuir en 1 cada segundo (como un cronómetro regresivo).
- **Fin del juego**: El juego termina cuando la persona jugadora alcance **10 puntos** (u otro número de su elección) o cuando el tiempo llegue a **0**. En ambos casos, se debe mostrar un mensaje apropiado (por ejemplo: "¡Ganaste! Recogiste todos los juguetes" o "¡Se acabó el tiempo!").

---

## Entregables

Cada estudiante debe entregar:

1. **Archivo `.sb3`**: El proyecto de Scratch con el juego, guardado desde *Archivo > Guardar en tu computador*.

2. **Documento con descripción del pensamiento computacional aplicado**: Un documento en formato PDF que describa cómo se aplicaron los cuatro principios del pensamiento computacional en el desarrollo del juego:

   - **Descomposición**: ¿En qué subproblemas se dividió el problema principal? (por ejemplo: dibujar la casa del perro, mostrar y pronunciar el mensaje, mover el perro, detectar colisiones con efecto, manejar la cuenta regresiva, etc.)
   - **Reconocimiento de patrones**: ¿Qué patrones se identificaron? (por ejemplo: el movimiento con flechas sigue un patrón repetitivo, el ciclo de recoger y reubicar se repite, el bloque propio permite reutilizar el mismo patrón de dibujo, etc.)
   - **Abstracción**: ¿Qué información es relevante y cuál se puede ignorar? (por ejemplo: las coordenadas (x, y) del perro y del juguete son relevantes; los colores del escenario no lo son. El bloque propio abstrae los detalles del dibujo, etc.)
   - **Diseño de algoritmos**: Describa paso a paso el algoritmo general del juego, desde el inicio hasta el fin, incluyendo la lógica de la cuenta regresiva.

---

## Rúbrica de evaluación

| Criterio | Descripción | Puntos |
|---|---|---:|
| **Mensaje con *decir* + Texto a voz** | El perro muestra una frase de bienvenida con el bloque *decir* y además pronuncia un mensaje con la extensión Texto a voz. | 10 |
| **Dibujo con Lápiz usando bloques propios** | Se dibuja una casa visible usando la extensión Lápiz, implementada con bloques propios con datos de entrada. | 15 |
| **Sprites personalizados** | Se utilizan un perro y juguetes (pelotas u otros) como sprites del juego (no el gato ni la manzana originales). | 10 |
| **Movimiento con teclado** | El perro se desplaza correctamente con las cuatro flechas de dirección. | 10 |
| **Detección de colisiones + efecto** | Se detecta correctamente cuándo el perro toca el juguete y se produce un efecto (cambio de disfraz, sonido o efecto gráfico). | 10 |
| **Reubicación aleatoria** | El juguete se mueve a una posición aleatoria cada vez que es recogido. | 10 |
| **Sistema de puntuación** | La variable `Puntos` se inicializa en 0 y aumenta en 1 con cada colisión. | 10 |
| **Cuenta regresiva y fin del juego** | El juego incluye una cuenta regresiva y termina correctamente al alcanzar cierta cantidad de puntos o al agotarse el tiempo, mostrando un mensaje apropiado. | 10 |
| **Pensamiento computacional** | El documento describe adecuadamente la descomposición, patrones, abstracción y algoritmo. | 15 |
| **Total** | | **100** |
