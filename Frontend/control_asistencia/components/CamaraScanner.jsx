import React, { useRef, useState } from 'react';
import { View } from 'react-native';
import { Camera } from 'expo-camera';
import styles from './styles';

const CamaraScanner = ({ referenciaCamaraProp, manejarEscaneoCodigoBarras, manejarEnfoque }) => {
  const referenciaCamaraLocal = useRef(null);

  return (
    <View style={styles.contenedorCamara}>
      <Camera
        style={styles.camara}
        onBarCodeScanned={manejarEscaneoCodigoBarras}
        ref={referenciaCamaraProp || referenciaCamaraLocal}
      >
        <View style={styles.marcoQr} onTouchStart={manejarEnfoque} />
      </Camera>
    </View>
  );
};

export default CamaraScanner;
