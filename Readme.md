¿Qué es OarMeter?
-----------------
OarMeter es un sistema digital para la asistencia al calibrado de los remos, en un bote de remo de competición.

En el remo de competición, el adaptar el bote a las características individuales de la tripulación es de vital importancia para que ésta rinda al máximo de sus posibilidades.

La inclinación o verticalidad con la que la pala del remo entra y sale del agua, es uno de los muchos parámetros del bote a calibrar. El método tradicional mediante el que se lleva acabo este ajuste es lento, tedioso e inexacto. El objetivo de OarMeter es facilitar el proceso y dotarlo de mayor precisión.

Descripción del sistema
-----------------------
El sistema consta de 4 componentes principales:

* **Microcontrolador**: Usaremos un **Atmega328** para implementar la lógica del sistema.
* **IMU (Inertial Measurement Unit)**: Proporcionará los ángulos del sistema respecto a la superficie terrestre. Se usarán para medir la verticalidad de la pala.
* **LCD Nokia**: Usaremos este sencillo display para mostrar la información al usuario.
* **Joystick**: Un pequeño joystick será la forma en la que el usuario interaccionará con el sistema.

Gracias al reducido consumo de estos componentes, el sistema se alimentará con dos **pilas de botón** de 3V.

![Diagrama simplificado del sistema](http://3.bp.blogspot.com/-2rPBQhqsxMY/VIG3G-TsQTI/AAAAAAAAAnE/TK2cVQJTruY/s1600/Diagrama.png)

Estructura del repositorio
--------------------------
El proyecto abarca tanto el diseño hardware como el software del microcontrolador, por lo que se dividirá en dos carpetas principales

* **Software**: Código para el microcontrolador Atmega328
* **Hardware**: Esquemáticos, PCB, etc...

Para el diseño de la parte hardware se utilizara [Kicad](http://www.kicad-pcb.org "Kicad official website").

Enlaces
-------

* **Blog**: [http://oarmeter.blogspot.com.es](http://oarmeter.blogspot.com.es)
* **CUSL**: Este proyecto participa en el Concurso Universitario de Software Libre. En este enlace podéis encontrar más información: [http://www.concursosoftwarelibre.org/1415/?q=proyectos/67](http://www.concursosoftwarelibre.org/1415/?q=proyectos/67)


Submódulos
==========
Este repositorio utiliza submódulos git para desargar algunas bibliotecas
necesarias. Para garantizar que estos submódulos se descargan se puede proceder
de una de las siguientes formas:

1. Clonar el repositorio con el comando:
	```
	$> git clone --recursive git@github.com:FarK/OarMeter.git
	```

1. Ejecutar (en la raíz del repositorio) los siguientes comandos:
	```
	$> git submodule init
	$> git submodule update
	```
