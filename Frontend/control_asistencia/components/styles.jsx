// En tu archivo estilos.js
import { StyleSheet } from 'react-native';

const styles = StyleSheet.create({
  contenedor: {
    flexGrow: 1,
    paddingHorizontal: 20,
    paddingTop: 40,
    backgroundColor: '#fff',
  },
  contenedorFormulario: {
    flex: 1,
    width: '100%',
    justifyContent: 'center',
    alignItems: 'center',
    marginBottom: 10,
  },
  tituloFormulario: {
    fontSize: 20,
    fontWeight: 'bold',
    marginBottom: 20,
  },
  entrada: {
    height: 40,
    borderColor: 'black',
    marginBottom: 10,
    borderRadius: 10,
    borderBottomWidth: 1,
    paddingLeft: 10,
    width: '100%',
  },
  selector: {
    height: 50,
    width: '100%',
    marginBottom: 10,
  },
  logo: {
    width: 100,
    height: 100,
    resizeMode: 'contain',
    marginBottom: 20,
  },
  boton: {
    marginTop: 10,
    padding: 10,
    backgroundColor: '#11366A',
    borderRadius: 5,
    alignItems: 'center',
    width: '100%',
  },
  text: {
    color: 'white'
  },
  contenedorQr: {
    flex: 1,
    width: '100%',
    justifyContent: 'center',
    alignItems: 'center',
  },
  entradaQr: {
    height: 40,
    borderColor: 'black',
    marginBottom: 10,
    borderRadius: 10,
    borderBottomWidth: 1,
    paddingLeft: 10,
    width: '100%',
    color: 'black',
    textAlign: 'center'
  },
  contenedorCamara: {
    justifyContent: 'flex-end', // Alinea la cámara en la parte inferior
    alignItems: 'center',
    backgroundColor: 'black',
    width: '50%',
    aspectRatio: 1, // Asegura una relación de aspecto cuadrada
    marginBottom: 20, // Ajusta el margen inferior según tus necesidades
  },
  
  camara: {
    width: '100%',
    aspectRatio: 1, // Asegura una relación de aspecto cuadrada
    borderWidth: 2,
    borderColor: 'black',
  },
});

export default styles;
