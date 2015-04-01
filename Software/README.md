Firmware
========
En esta carpeta está todo el código necesario para generar el firmware del
sistema.

Estructura
----------
Se ha elegido una estructura que separa todo el código dependiente del hardware
en la carpeta _BSP_ (_Board SPecific_). Todo el código del sistema operativo
está en la carpeta _FreeRTOS_, a excepción de los archivos para el _port_ que
están en _BSP/FreeRTOS_. Por último, el código de las tareas se agrupa en
_task_.

CMake
-----
En el archivo _CMakeLists.txt_ principal se puede modificar las opciones de
compilación y de programación del ATMega328.

Se ha creado un target "_program_" para facilitar la programación de la placa.

Compilación y programación
--------------------------
Para compilar seguir los siguientes pasos:

1. Crear un directorio para la compilación:
	```
	$> mkdir build
	$> cd build
	```

2. Crear makefile mediante CMake y compilar:
	```
	$> cmake ../
	$> make
	```

3. Programar ATMega328. Para que este target funcione debes configurar los
   parámetros de tu programador en _CMakeLists.txt_
	```
	$> make upload
	```

Submódulos
==========
Se han incorporado las bibliotecas para el LCD y la IMU directamente de sus
repositorios, mediante los submódulos de git. Por ello, para obtener el código
de estos repositorios hay estas dos opciones:

1. Clonar el repositorio con el comando:
	```
	$> git clone --recursive git@github.com:FarK/OarMeter.git
	```

1. Ejecutar (en la raíz del repositorio) los siguientes comandos:
	```
	$> git submodule init
	$> git submodule update
	```
