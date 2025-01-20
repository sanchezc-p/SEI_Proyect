# SEI_Proyect
# Integración de PicoRV32 para la FPGA PYNQ-Z2

Este repositorio contiene todos los recursos necesarios para integrar y probar el núcleo **PicoRV32** basado en RISC-V en la placa FPGA PYNQ-Z2 utilizando Vivado. Está organizado en tres directorios principales:

## Estructura del Repositorio

```
├── picorv32-vivado-ip-main        # Núcleo IP de PicoRV32 para Vivado
├── Proyecto # Proyecto de Vivado para integrar PicoRV32 en PYNQ-Z2
└── test_files         # Archivos de prueba para validar el funcionamiento
```

### **1. picorv32-vivado-ip-main**
Este directorio contiene los archivos fuente en Verilog para el núcleo **PicoRV32** y su configuración como IP para Vivado. El núcleo está configurado como un procesador RISC-V RV32I mínimo, ideal para su integración en proyectos basados en FPGA.

#### Archivos:
- `picorv32.v`: Archivo fuente principal para el núcleo PicoRV32.
- `picorv32_axi_v1_0.tcl`: Adaptador AXI opcional para conectar a periféricos AXI.
- `vivado_ip/`: Empaquetado IP preconfigurado para fácil inclusión en proyectos.

#### Uso:
1. Importa el IP en tu proyecto de Vivado agregando el directorio a las rutas del repositorio de IP.
2. Personaliza el IP si es necesario, como agregar soporte AXI o configurar interfaces de memoria.

---

### **2. Proyecto**
Esta carpeta contiene los archivos del proyecto Vivado para integrar el núcleo **PicoRV32** en la placa de desarrollo PYNQ-Z2. El diseño conecta el núcleo a periféricos esenciales y recursos como memoria y GPIOs.

#### Archivos:
- `Proyecto_V3_final.xpr`: Archivo del proyecto Vivado.
- `bd/`: Diseño en bloque preconfigurado con PicoRV32 y periféricos.
- `design_1_wrapper.bit` : Bitstream precompilado para uso inmediato.


#### Uso:
1. Abre el archivo `Proyecto_V3_final.xpr` en Vivado.
2. Revisa y modifica el diseño en bloque si es necesario (por ejemplo, agregando periféricos personalizados).
3. Genera el bitstream y programa la FPGA PYNQ-Z2.

---

### **3. test_files**
Este directorio contiene programas de prueba, scripts y recursos para validar la funcionalidad del núcleo PicoRV32 en la placa PYNQ-Z2.

#### Archivos:
- `Codigo_IOT.c`: Un programa en C para controlar y alternar las salidas GPIO en un sistema embebido.
- `Lectura_boton.c`: Un programa en C para leer el estado de un botón conectado a un GPIO y tomar acciones en función de su estado.
- `Software_educacion.c`: Un programa educativo en C que implementa funcionalidades específicas para la enseñanza de conceptos de sistemas embebidos

---

## Prerrequisitos
- **Vivado 2019.2** o posterior.
- **Toolchain RISC-V**: Instala `riscv32-unknown-elf-gcc` para compilar programas RISC-V.
- **Placa PYNQ-Z2**: Asegúrate de que tu placa esté conectada y alimentada.

---

## Primeros Pasos

### Paso 1: Importar el Núcleo IP
1. Abre Vivado y crea un nuevo proyecto.
2. Agrega el directorio `picorv32-vivado-ip-main/vivado_ip/` a las rutas del repositorio de IP.
3. Agrega el núcleo PicoRV32 a tu diseño en bloque.

### Paso 2: Usar el Diseño de Integración
1. Abre el proyecto `Proyecto/Proyecto_V3_final.xpr` en Vivado.
2. Genera el bitstream.
3. Programa la placa PYNQ-Z2 con el bitstream generado.

### Paso 3: Ejecutar los Archivos de Prueba
1. Compila el programa de ejemplo en `test_files/Codigo_IOT.c` utilizando el toolchain de RISC-V:
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

