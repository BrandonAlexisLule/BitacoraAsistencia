"use client"
import React from 'react';
import { TextInput} from 'react-native';
import styles from './styles';
import { Picker } from '@react-native-picker/picker';

const Formulario = ({
  formularioDatos,
  manejarCambioEntrada,
  carreras,
  carreraSeleccionada,
  establecerCarreraSeleccionada,
}) => {
  return (
    <>
      <TextInput
         style={styles.entrada}
         placeholder="Matricula"
         value={formularioDatos.input1}
         onChangeText={(texto) => manejarCambioEntrada('input1', texto)}
         keyboardType="numeric" 
      />
      <TextInput
        style={styles.entrada}
        placeholder="Nombre"
        value={formularioDatos.input2}
        onChangeText={(texto) => manejarCambioEntrada('input2', texto)}
      />
      <TextInput
  style={styles.entrada}
  placeholder="Grupo"
  value={formularioDatos.input3}
  onChangeText={(texto) => manejarCambioEntrada('input3', texto.toUpperCase())}
  maxLength={3}  
      />
      <TextInput
        style={styles.entrada}
        placeholder="Materia"
        value={formularioDatos.input4}
        onChangeText={(texto) => manejarCambioEntrada('input4', texto)}
      />
      <Picker
        style={styles.selector}
        selectedValue={carreraSeleccionada}
        onValueChange={(valorItem) => establecerCarreraSeleccionada(valorItem)}
      >
        <Picker.Item label="Selecciona una carrera" value={null} />
        {carreras.map((carrera) => (
          <Picker.Item key={carrera.id} label={carrera.nombre} value={carrera.nombre} />
        ))}
      </Picker>
    </>
  );
};

export default Formulario;