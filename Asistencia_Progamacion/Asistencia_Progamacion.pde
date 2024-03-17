void setup() {
  size(400, 400);
  background(255, 200, 200); // fondo rosa
}

void draw() {
  // Cuerpo
  fill(0); // negro
  ellipse(200, 300, 180, 150); // cuerpo
  // Panza
 fill(255); // blanco
  ellipse(200, 300, 120, 100); // panza

  // Cabeza
  fill(0); // megro
  ellipse(200, 200, 120, 120); // cabeza
  
  // Orejas
  fill(0); // negro
  triangle(160, 160, 180, 120, 200, 160); // oreja izquierda
  triangle(240, 160, 230, 120, 200, 160); // oreja derecha

  // Ojos
  fill(0, 140, 0); // verde
  ellipse(180, 190, 40, 40); // ojo izquierdo
  ellipse(220, 190, 40, 40); // ojo derecho

  // Pupilas
  fill(197); // blanco
  ellipse(180, 190, 20, 20); // pupila izquierda
  ellipse(220, 190, 20, 20); // pupila derecha

  // Nariz
  fill(255); // blanco
  ellipse(200, 210, 20, 10); // nariz

  // Boca
  fill(255, 0, 0);
  noStroke();
  arc(200, 230, 50, 30, 0, PI); // boca
  
  // Cola
  stroke(0); // Establece el color de trazo en negro para la cola
  strokeWeight(5); // Ajusta el grosor del trazo de la cola
  drawTail(150, 300, 70, 250); // Dibuja la cola del gato como una línea de puntos

  // Patas
  fill(0); // negro
  ellipse(150, 340, 40, 40); // pata izquierda delantera
  ellipse(250, 340, 40, 40); // pata derecha delantera
  ellipse(150, 380, 40, 40); // pata izquierda trasera
  ellipse(250, 380, 40, 40); // pata derecha trasera
}

void drawTail(float x1, float y1, float x2, float y2) {
  float angle = 0.5; // Variable para ajustar la ondulación
  float angleStep = 0.1; // Incremento de ángulo para suavizar la ondulación

  for (float t = 0; t <= 1; t += 0.05) {
    float x = curvePoint(x1, x1, x2, x2, t);
    float y = curvePoint(y1, y1, y2, y2, t) + sin(angle) * 25; // Ajusta la altura de la ondulación
    angle += angleStep;
    point(x, y);
  }
}
