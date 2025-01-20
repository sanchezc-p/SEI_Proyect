#include <stdio.h>
#include <stdlib.h>

#define BUTTON_PIN 5  // Pin del botón

void init_button() {
    printf("Inicializando botón en el pin %d\n", BUTTON_PIN);
}

int read_button_state() {
    // Simulación de lectura del botón (0: no presionado, 1: presionado)
    return rand() % 2;  // Genera 0 o 1 aleatoriamente
}

int main() {
    init_button();

    while (1) {
        int button_state = read_button_state();
        if (button_state) {
            printf("Botón presionado\n");
        } else {
            printf("Botón no presionado\n");
        }
        for (volatile int i = 0; i < 1000000; i++);  // Delay simple
    }

    return 0;
}