const express = require('express');
const { PrismaClient } = require('@prisma/client');
const cors = require('cors');
const { PDFDocument, rgb } = require('pdf-lib'); // Asegúrate de tener pdf-lib instalado
const fs = require('fs/promises'); // Módulo de manejo de archivos para Node.js
const app = express();
const prisma = new PrismaClient();

// Middleware para manejar datos en formato JSON
app.use(express.json());

app.use(cors({
  origin: '*', // Permitir solicitudes desde cualquier origen
  methods: 'GET,HEAD,PUT,PATCH,POST,DELETE', // Permitir los métodos que necesitas
  headers: 'Origin, X-Requested-With, Content-Type, Accept', // Permitir los encabezados que necesitas
}));

// Rutas
app.get('/laboratorios', async (req, res) => {
  try {
    console.log('Consultando laboratorios...');
    const laboratorios = await prisma.laboratorio.findMany();
    console.log('Laboratorios recuperados:', laboratorios);
    res.json(laboratorios);
  } catch (error) {
    console.error('Error al recuperar laboratorios:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

app.get('/carrera', async (req, res) => {
  try {
    console.log('Consultando carreras...');
    const carreras = await prisma.carrera.findMany();
    console.log('Carreras recuperadas:', carreras);
    res.json(carreras);
  } catch (error) {
    console.error('Error al recuperar carreras:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

// Obtener todos los registros
app.get('/registro', async (req, res) => {
  try {
    const registros = await prisma.registro.findMany();
    res.json(registros);
  } catch (error) {
    console.error('Error al obtener registros:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});

app.post('/guardarInformacion', async (req, res) => {
  try {
    const { matricula, nombre, grupo, materia, carrera, nombre_laboratorio } = req.body;

    console.log('Guardando información en la base de datos...');

    await prisma.registro.create({
      data: {
        matricula,
        nombre,
        grupo,
        materia,
        carrera: String(carrera), // Convertir a cadena
        nombreLaboratorio: nombre_laboratorio,
        fechaRegistroWeb: new Date(), // Agregar la fecha actual
      },
    });

    console.log('Información guardada correctamente');
    res.status(200).json({ success: true });
  } catch (error) {
    console.error('Error al guardar información en la base de datos:', error);
    res.status(500).json({ error: 'Internal Server Error' });
  }
});


// Iniciar el servidor
const PORT = process.env.PORT || 3001;
app.listen(PORT, () => {
  console.log(`Servidor escuchando en el puerto ${PORT}`);
});
