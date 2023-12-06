"use client"
// App.js
import React, { useState, useEffect, useRef } from 'react';
import { View, Text, ScrollView, Image, TextInput, TouchableOpacity, Alert } from 'react-native';
import { Camera } from 'expo-camera';
import axios from 'axios';
import Formulario from './components/Formulario';
import CamaraScanner from './components/CamaraScanner';
import styles from './components/styles';

const App = () => {
  const [tienePermiso, establecerPermiso] = useState(null);
  const [datosQr, establecerDatosQr] = useState(null);
  const [formularioDatos, establecerFormularioDatos] = useState({
    input1: '',
    input2: '',
    input3: '',
    input4: '',
  });
  const [carreras, establecerCarreras] = useState([]);
  const [carreraSeleccionada, establecerCarreraSeleccionada] = useState(null);
  const referenciaCamara = useRef(null);
  const [mostrarCamara, setMostrarCamara] = useState(true);
  const [mostrarEscaneoQR, setMostrarEscaneoQR] = useState(true);
  const [tiempoTranscurrido, setTiempoTranscurrido] = useState(0);

  useEffect(() => {
    const intervalo = setInterval(() => {
      setTiempoTranscurrido((prevTiempo) => prevTiempo + 1);
    }, 1000);
  
    return () => clearInterval(intervalo);
  }, []);
  

  useEffect(() => {
    (async () => {
      const { status } = await Camera.requestCameraPermissionsAsync();
      console.log('Estado de permisos:', status);
      establecerPermiso(status === 'granted');
    })();
  }, []);

  useEffect(() => {
    obtenerCarreras();
  }, []);

  const obtenerCarreras = async () => {
    try {
      const respuesta = await axios.get('http://192.168.100.8:3001/carrera');
      establecerCarreras(respuesta.data);
    } catch (error) {
      console.error('Error al obtener carreras:', error);
    }
  };


  const manejarEnfoque = async () => {
    if (referenciaCamara.current) {
      await referenciaCamara.current.resumePreview();
    }
  };

  const manejarCambioEntrada = (nombre, valor) => {
    if (nombre === 'carrera') {
      establecerCarreraSeleccionada(valor.id); // Asumiendo que 'valor' es el objeto de carrera
    } else {
      establecerFormularioDatos({
        ...formularioDatos,
        [nombre]: valor,
        carrera: valor.id,
      });
    }
  };

  const manejarEscaneoCodigoBarras = ({ type, data }) => {
    establecerDatosQr(data);

    // Ocultar la cámara y el escáner después de escanear
    setMostrarCamara(false);
    setMostrarEscaneoQR(false);
  };

  const manejarEnvio = async () => {
    try {
      if (tiempoTranscurrido >= 3600) { // 3600 segundos = 1 hora
        const respuesta = await axios.post('http://192.168.100.8:3001/guardarInformacion', {
          matricula: formularioDatos.input1,
          nombre: formularioDatos.input2,
          grupo: formularioDatos.input3,
          materia: formularioDatos.input4,
          carrera: carreraSeleccionada,
          nombre_laboratorio: datosQr,
        });
  
        if (respuesta.data.success) {
          Alert.alert('Formulario enviado correctamente');
        } else {
          Alert.alert('Error al enviar el formulario');
        }
      } else {
        Alert.alert('Debes esperar al menos una hora antes de enviar el formulario.');
      }
    } catch (error) {
      console.error('Error al enviar el formulario:', error);
      Alert.alert('Error interno del servidor');
    }
  };
  

  if (tienePermiso === null) {
    return <View />;
  }

  if (tienePermiso === false) {
    return <Text>Sin acceso a la cámara</Text>;
  }

  return (
    <ScrollView contentContainerStyle={styles.contenedor}>
      <View style={styles.contenedorFormulario}>
        <Image
          source={require('./assets/logo-ensenada.png')} // Ajusta la ruta según la ubicación de tu logo
          style={styles.logo}
        />
        <Text style={styles.tituloFormulario}>Bitacora de Asistencia</Text>
        <Formulario
          formularioDatos={formularioDatos}
          manejarCambioEntrada={manejarCambioEntrada}
          carreras={carreras}
          carreraSeleccionada={carreraSeleccionada}
          establecerCarreraSeleccionada={establecerCarreraSeleccionada}
        />
        <CamaraScanner
          referenciaCamara={referenciaCamara}
          manejarEscaneoCodigoBarras={manejarEscaneoCodigoBarras}
          manejarEnfoque={manejarEnfoque}
          visible={mostrarEscaneoQR}
        />
        {datosQr && (
          <View style={styles.contenedorQr}>
            <Text>Código QR leído:</Text>
            <TextInput style={styles.entradaQr} value={datosQr} editable={false} />
            </View>
        )}
        <TouchableOpacity onPress={manejarEnvio} style={styles.boton}>
          <Text style={styles.text}>Enviar</Text>
        </TouchableOpacity>
      </View>
    </ScrollView>
  );
};

export default App;