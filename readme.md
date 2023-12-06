# Registro y Control del Proyecto

En el actual repositorio se encuentra el prototipo de un sistema que controle la asistencia a los laboratiorio de computo(LC1,LC2,LC3,LC4,LC5,LC6,LR).
El sistema debera entregar un reporte de cuantas personas ingresan a cada laboratorio, indicando el grupo, materia y carrera.
Los usuarios registran su asistencia via qr, a travaez de su movil y con una aplicacion web se observaran los registros.

## Estructura del Proyecto

- **frontend:** Contiene las aplicaciones móviles y web.
- **backend:** Contiene el servidor backend con Prisma, Axios, Express.js y MySQL.
- **scripts:** Contiene el script para la generación de códigos QR.

## Instalación

### Frontend de la Aplicacion Movil

1. Accede a la carpeta `frontend`.
2. Accede a la carpeta `control_asistencia`.
3. Instala las dependencias:

    ```bash
    npm install
    ```

4. Ejecuta la aplicación móvil:

    ```bash
    npx react-native run-android  # Para Android
    npx react-native run-ios      # Para iOS
    ```

### Frontend de la Aplicacion Web

1. Accede a la carpeta `frontend`.
2. Accede a la carpeta `registro_asistencia`.
3. Instala las dependencias:

    ```bash
    npm install
    ```


### Backend

1. Accede a la carpeta `backend`.
2. Instala las dependencias:

    ```bash
    npm install
    ```

3. Configura la base de datos MySQL en el archivo `.env`.
   ```bash
    DATABASE_URL="mysql://root:root123@localhost:3306/control_asistencia"
    ```

5. Ejecuta el servidor:

    ```bash
    node index.js
    ```

### Scripts

1. Accede a la carpeta `scripts`.
2. Instala las dependencias:

    ```bash
    npm install
    ```

3. Ejecuta el script de generación de códigos QR:

    ```bash
    npm run generate-qr
    ```

## Uso

- **Aplicación Móvil:** Utiliza la aplicación móvil para escanear códigos QR y registrar asistencias.
- **Aplicación Web:** Accede a la aplicación web para gestionar información y visualizar registros.
- **Backend:** El servidor backend maneja la comunicación entre la aplicación y la base de datos.

## Contribuciones

¡Las contribuciones son bienvenidas! Si deseas contribuir a este proyecto, sigue estos pasos:

1. Realiza un fork del repositorio.
2. Crea una nueva rama para tu contribución: `git checkout -b feature/nueva-caracteristica`.
3. Realiza tus cambios y haz commit: `git commit -m 'Añade nueva característica'`.
4. Sube tus cambios: `git push origin feature/nueva-caracteristica`.
5. Abre un Pull Request.

## Referencias

- [Enlace a Documentación Externa](https://github.com/moaazsidat/react-native-qrcode-scanner.git) 
- [Enlace a Documentación Externa](https://reactnative.dev/docs/getting-started)
- [Enlace a Documentación Externa](https://nextjs.org/docs)
- [Enlace a Documentación Externa](https://www.prisma.io/docs)
- [Otra Fuente Relevante](https://bard.google.com/chat?hl=es)
- [Otra Fuente Relevante](https://www.youtube.com/watch?v=e7qf9UJvoC0)
- [Otra Fuente Relevante](https://chat.openai.com/)

## Contacto

Para obtener más información, contáctame a través de [correo electrónico](al20760222@ite.edu.mx) o visita mi perfil en [GitHub]((https://github.com/ValenzuelaRa/)).

## Inspiración

Este proyecto fue inspirado por el trabajo de [Nombre del Proyecto Inspirador](https://github.com/moaazsidat/react-native-qrcode-scanner.git)

