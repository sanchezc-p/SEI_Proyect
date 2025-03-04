#include <stdio.h>

int main() {
    int a, b, op;
    printf("Calculadora basada en RISC-V\n");
    printf("Elige una operación:\n1. Suma\n2. Resta\n3. Multiplicación\n4. División\n");
    scanf("%d", &op);
    printf("Introduce dos números: ");
    scanf("%d %d", &a, &b);

    switch (op) {
        case 1: printf("Resultado: %d\n", a + b); break;
        case 2: printf("Resultado: %d\n", a - b); break;
        case 3: printf("Resultado: %d\n", a * b); break;
        case 4: 
            if (b != 0) printf("Resultado: %.2f\n", (float)a / b);
            else printf("Error: División por cero\n");
            break;
        default: printf("Operación no válida\n");
    }
    return 0;
}