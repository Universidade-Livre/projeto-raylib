#include "raylib.h"
#include <stdio.h>

int main(void) {
  // consts
  const int screenWidth = 800;
  const int screenHeight = 450;

  InitWindow(screenWidth, screenHeight, "Teste de Renderização Raylib");

  SetTargetFPS(60);

  printf("Janela inicializada. Largura: %d, Altura: %d\n", screenWidth,
         screenHeight);

  while (!WindowShouldClose()) {
    BeginDrawing();

    ClearBackground(RAYWHITE);

    // Teste 3: Triângulo usando três linhas
    DrawLine(400, 130, 270, 300, RED);
    DrawLine(270, 300, 530, 300, GREEN);
    DrawLine(530, 300, 400, 130, BLUE);

    // Texto explicativo
    DrawText("Se você está lendo isso a RayLib Funciona!", 220, 410, 20,
             DARKGRAY);

    EndDrawing();
  }

  CloseWindow();

  return 0;
}
