import pymysql
import qrcode

# Establecemos la conexión con la base de datos
conexion = pymysql.connect(
    host="localhost",
    user="root",
    password="root123",
    database="control_asistencia",
)

# Realizamos la consulta SQL
cursor = conexion.cursor()
cursor.execute("SELECT nombre FROM laboratorios")

# Iteramos sobre los resultados de la consulta
for row in cursor:
    nombre_laboratorio = row[0]

    qr = qrcode.QRCode(
        version=1,
        error_correction=qrcode.constants.ERROR_CORRECT_L,
        box_size=10,
        border=4,
    )

    qr.add_data(nombre_laboratorio)

    qr.make(fit=True)

    # Guardamos el código QR en un archivo
    qr.make_image(fill_color="black", back_color="white").save("laboratorio_" + nombre_laboratorio + ".png")

# Cerramos el cursor y la conexión
cursor.close()
conexion.close()


