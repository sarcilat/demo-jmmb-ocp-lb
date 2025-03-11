# App php

## Acerca de
Plantilla de prueba descargada desde [free-css](https://www.free-css.com/free-css-templates/page235/thempleite), para realizar demostraciones

## Modo de ejecución

A continuación se describen algunos metodos de ejecución del proyecto:

### Localhost

Abra una terminal, desde la terminal, acceda al directorio en el que descargó el código, y a continuación ingrese el siguiente comando:

```bash
php -S 127.0.0.1:8080 
```

En caso de que se presente el siguiente error

```bash
zsh: command not found: php
```

Se debe instalar php, para lo cual puede seguir el siguiente [tutorial](https://www.geeksforgeeks.org/how-to-install-php-on-macos/).

Si tiene una respuesta como la que se muestra a continuación, será el momento de acceder a la página web por medio de cualquier navegador y acceder a la url: `http://localhost:8080` para comprobar que la aplicación se haya ejecutado correctamente.

## Someter a estrés los POD generados

Para comprobar la forma en la ue funcionan el balanceo de los POD, se puede acudir al siguiente script en bash:

```bash
#! /bin/bash

for i in {1..200} ; do curl -k $1/hostname.php ; sleep 1; done
```

Este es un script muy sencillo en el que se hace lo siguiente:

| Código | Funcionalidad |
| :---: | :--- |
| `for i in {1..200}` | Establece un ciclo o bucle que se va a repetir 200 veces |
| `curl -k $1/hostname.php` | Realiza un curl, es decir una solicitud a la URL especificada. El argumento `-k` indica que debe ignorar la ausencia de credenciales SSL o TLS. El argumento $1, se toma de lo que se le indique como argumento al momento de ejecutar el script, y finalmente `/hostname.php` es el nombre de la operación que se va a consumir. |
| `sleep 1` | Le indica que debe esperar un segundo para ejecutar la siguiente acción. En este caso espera un segundo antes de volver a lanzar el comando cURL. |

Este script se debe almacenar en un archivo con extensión `.sh`, que se debe ejecutar como se muestra a continuación:

```bash
sh forocp.sh host-name-de-la-publicación
```

Donde `host-name-de-la-publicación` corresponde con el nombre del host que le ha sido asignado al proyecto en OpenShift.
