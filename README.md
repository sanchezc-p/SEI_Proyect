# SEI_Proyect
# Integración de PicoRV32 para la FPGA PYNQ-Z2

Este repositorio contiene todos los recursos necesarios para integrar y probar el núcleo **PicoRV32** basado en RISC-V en la placa FPGA PYNQ-Z2 utilizando Vivado. Está organizado en tres directorios principales:

## Estructura del Repositorio

```
├── picorv32_ip        # Núcleo IP de PicoRV32 para Vivado
├── integration_design # Proyecto de Vivado para integrar PicoRV32 en PYNQ-Z2
└── test_files         # Archivos de prueba para validar el funcionamiento
```

### **1. picorv32_ip**
Este directorio contiene los archivos fuente en Verilog para el núcleo **PicoRV32** y su configuración como IP para Vivado. El núcleo está configurado como un procesador RISC-V RV32I mínimo, ideal para su integración en proyectos basados en FPGA.

#### Archivos:
- `picorv32.v`: Archivo fuente principal para el núcleo PicoRV32.
- `picorv32_axi_adapter.v`: Adaptador AXI opcional para conectar a periféricos AXI.
- `vivado_ip/`: Empaquetado IP preconfigurado para fácil inclusión en proyectos.

#### Uso:
1. Importa el IP en tu proyecto de Vivado agregando el directorio `vivado_ip/` a las rutas del repositorio de IP.
2. Personaliza el IP si es necesario, como agregar soporte AXI o configurar interfaces de memoria.

---

### **2. integration_design**
Esta carpeta contiene los archivos del proyecto Vivado para integrar el núcleo **PicoRV32** en la placa de desarrollo PYNQ-Z2. El diseño conecta el núcleo a periféricos esenciales y recursos como memoria y GPIOs.

#### Archivos:
- `design_1.xpr`: Archivo del proyecto Vivado.
- `constraints.xdc`: Restricciones de pines para la placa PYNQ-Z2.
- `block_diagram/`: Diseño en bloque preconfigurado con PicoRV32 y periféricos.
- `bitstream/`: Bitstream precompilado para uso inmediato.

#### Uso:
1. Abre el archivo `design_1.xpr` en Vivado.
2. Revisa y modifica el diseño en bloque si es necesario (por ejemplo, agregando periféricos personalizados).
3. Genera el bitstream y programa la FPGA PYNQ-Z2.

---

### **3. test_files**
Este directorio contiene programas de prueba, scripts y recursos para validar la funcionalidad del núcleo PicoRV32 en la placa PYNQ-Z2.

#### Archivos:
- `program.c`: Un programa en C de ejemplo para alternar salidas GPIO.
- `program.hex`: El binario compilado en formato hex (para cargar en BRAM).
- `testbench.v`: Banco de pruebas en Verilog para simulación.
- `load_memory.py`: Script en Python para cargar el programa de prueba en BRAM.

#### Uso:
1. Utiliza `riscv32-unknown-elf-gcc` para compilar tus programas en formato hex.
2. Carga el programa compilado en la memoria de la FPGA utilizando `load_memory.py`.
3. Observa el comportamiento de los GPIOs u otros periféricos conectados.

---

## Prerrequisitos
- **Vivado 2020.2** o posterior.
- **Toolchain RISC-V**: Instala `riscv32-unknown-elf-gcc` para compilar programas RISC-V.
- **Placa PYNQ-Z2**: Asegúrate de que tu placa esté conectada y alimentada.

---

## Primeros Pasos

### Paso 1: Importar el Núcleo IP
1. Abre Vivado y crea un nuevo proyecto.
2. Agrega el directorio `picorv32_ip/vivado_ip/` a las rutas del repositorio de IP.
3. Agrega el núcleo PicoRV32 a tu diseño en bloque.

### Paso 2: Usar el Diseño de Integración
1. Abre el proyecto `integration_design/design_1.xpr` en Vivado.
2. Genera el bitstream.
3. Programa la placa PYNQ-Z2 con el bitstream generado.

### Paso 3: Ejecutar los Archivos de Prueba
1. Compila el programa de ejemplo en `test_files/program.c` utilizando el toolchain de RISC-V:
   ```bash
   riscv32-unknown-elf-gcc -o program.elf program.c -march=rv32i -mabi=ilp32
   riscv32-unknown-elf-objcopy -O ihex program.elf program.hex
   ```
2. Usa el script `load_memory.py` para cargar `program.hex` en la memoria de la FPGA.
3. Verifica la salida en los GPIOs u otros periféricos.

---

## Información Adicional
- **Documentación**:
  - Para obtener más información sobre PicoRV32, visita el [repositorio oficial de PicoRV32](https://github.com/cliffordwolf/picorv32).
- **Licencia**:
  - Este repositorio se distribuye bajo la licencia MIT.

---

¡Siéntete libre de contribuir a este proyecto enviando problemas o solicitudes de incorporación (pull requests)!

