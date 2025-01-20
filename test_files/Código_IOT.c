#include <stdio.h>
#include <stdlib.h>

#define SENSOR_PIN 2  // Pin del sensor de temperatura (ejemplo)

void init_sensor() {
    // Configuración básica del pin para entrada analógica
    printf("Inicializando sensor en pin %d\n", SENSOR_PIN);
}

float read_temperature() {
    // Simulación de lectura del sensor (reemplazar con librerías reales)
    return 25.0 + (rand() % 100) / 10.0;  // Temperatura entre 25.0 y 35.0 °C
}

int main() {
    init_sensor();
    while (1) {
        float temp = read_temperature();
        printf("Temperatura actual: %.1f°C\n", temp);
        // Aquí podrías enviar los datos por UART o a través de otro protocolo
        for (volatile int i = 0; i < 1000000; i++);  // Delay simple
    }
    return 0;
}