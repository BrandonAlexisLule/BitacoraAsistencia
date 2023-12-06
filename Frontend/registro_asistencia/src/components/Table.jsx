"use client";
import React, { useState, useEffect } from 'react';
import axios from 'axios';
import { FontAwesomeIcon } from '@fortawesome/react-fontawesome';
import { faSearch } from '@fortawesome/free-solid-svg-icons';

const Table = ({ registros }) => {
  const registrosPorPagina = 10;
  const [filtroLaboratorio, setFiltroLaboratorio] = useState(null);
  const [paginaActual, setPaginaActual] = useState(1);
  const [fechaSeleccionada, setFechaSeleccionada] = useState('');
  const laboratorios = ['LC1', 'LC2', 'LC3', 'LC4', 'LC5', 'LC6', 'LR'];

  useEffect(() => {
    cargarRegistros();
  }, [filtroLaboratorio, fechaSeleccionada, paginaActual]);

  const cargarRegistros = async () => {
    try {
      const response = await axios.get('http://192.168.100.38:3000/registro', {
      });

      // Puedes manejar los registros aquí según tus necesidades
    } catch (error) {
      console.error('Error al cargar registros:', error.message);
      // Puedes mostrar un mensaje de error al usuario si es necesario
    }
  };

  const cambiarPagina = (nuevaPagina) => {
    if (nuevaPagina > 0 && nuevaPagina <= paginasTotales) {
      setPaginaActual(nuevaPagina);
    }
  };

  const handleFiltrarPorLaboratorio = (nombreLaboratorio) => {
    setFiltroLaboratorio(nombreLaboratorio === 'Todos' ? null : nombreLaboratorio);
  };

  const handleFiltrarPorFecha = () => {
    cargarRegistros();
  };

  const registrosFiltrados = registros.map((registro) => ({
    ...registro,
    fechaRegistroApp: new Date(registro.fechaRegistroApp).toLocaleString('es-MX', {
      day: 'numeric',
      month: 'numeric',
      year: 'numeric',
      hour: 'numeric',
      minute: 'numeric',
      second: 'numeric',
    }),
  }));

  const registrosMostrados = registrosFiltrados
    .filter((registro) => {
      const nombreLaboratorio = registro.nombreLaboratorio;
      return filtroLaboratorio === null || nombreLaboratorio.includes(filtroLaboratorio);
    })
    .slice((paginaActual - 1) * registrosPorPagina, paginaActual * registrosPorPagina);

  const paginasTotales = Math.ceil(registrosFiltrados.length / registrosPorPagina);
  const mostrarPaginacion = registrosFiltrados.length > registrosPorPagina;

  return (
    <div>
      <div className="flex justify-between mb-4 items-center">
        <div className="flex items-center">
          <select
            value={filtroLaboratorio || 'Todos'}
            onChange={(e) => handleFiltrarPorLaboratorio(e.target.value)}
            className="p-3 rounded-lg bg-[#e2e2e2]"
          >
            <option value="Todos">Todos</option>
            {laboratorios.map((lab, index) => (
              <option key={index} value={lab}>
                {lab}
              </option>
            ))}
          </select>
          <button
            className="ml-4 p-[10px] rounded-lg bg-[#e2e2e2] uppercase"
            onClick={() => console.log('Buscar clicado')}> <FontAwesomeIcon icon={faSearch} />
          </button>
        </div>
        <div className="flex items-center">
          <input
            type="date"
            value={fechaSeleccionada}
            onChange={(e) => setFechaSeleccionada(e.target.value)}
            className="p-[10px] rounded-lg bg-[#e2e2e2]"
          />
          <button
            className="ml-4 p-[10px] rounded-lg bg-[#e2e2e2]"
            onClick={handleFiltrarPorFecha}
          >
            Filtrar por Fecha
          </button>
        </div>
        {mostrarPaginacion && (
          <div className="pagination-info">
            Página {paginaActual} de {paginasTotales}
          </div>
        )}
      </div>

      <div className="table-container rounded-tl-xl rounded-tr-xl   overflow-auto ">
        <table className="min-w-full">
          <thead className="bg-[#a9b0bf] text-gray-700">
            <tr>
              <th className="py-2 px-4 border-r-2 border-gray-700 text-center">ID</th>
              <th className="py-2 px-4 border-r-2 border-gray-700 text-center">Matrícula</th>
              <th className="py-2 px-4 border-r-2 border-gray-700  text-center text-sm">Nombre</th>
              <th className="py-2 px-4 border-r-2 border-gray-700  text-center text-sm">Grupo</th>
              <th className="py-2 px-4 border-r-2 border-gray-700  text-center text-sm">Materia</th>
              <th className="py-2 px-4 border-r-2 border-gray-700  text-center text-sm">Carrera</th>
              <th className="py-2 px-4 border-r-2 border-gray-700  text-center text-sm">Nombre Laboratorio</th>
              <th className="py-2 px-4 border-r-2 border-gray-700  text-center text-sm">Fecha y Hora de Registro</th>
            </tr>
          </thead>
          <tbody>
            {registrosMostrados.map((registro) => (
              <tr key={registro.id}>
                <td className="py-2 px-4 bg-[#e2e2e2] border-r-2 border-gray-700 text-center text-xs">1{registro.id}</td>
                <td className="py-2 px-4 bg-[#e2e2e2] border-r-2 border-gray-700 text-center text-xs">adsf{registro.matricula}</td>
                <td className="py-2 px-4 bg-[#e2e2e2] border-r-2 border-gray-700 text-center text-xs">asdf{registro.nombre}</td>
                <td className="py-2 px-4 bg-[#e2e2e2] border-r-2 border-gray-700 text-center text-xs">adsf{registro.grupo}</td>
                <td className="py-2 px-4 bg-[#e2e2e2] border-r-2 border-gray-700 text-center text-xs">asdf{registro.materia}</td>
                <td className="py-2 px-4 bg-[#e2e2e2] border-r-2 border-gray-700  text-center text-xs">asdf{registro.carrera}</td>
                <td className="py-2 px-4 bg-[#e2e2e2] border-r-2 border-gray-700 text-center text-xs">asdf{registro.nombreLaboratorio}</td>
                <td className="py-2 px-4 bg-[#e2e2e2] border-r-2 border-gray-700 text-center text-xs">asdfds{registro.fechaRegistroApp}</td>
              </tr>
            ))}
          </tbody>
        </table>
      </div>
      <div className="flex justify-end mt-4">
        {mostrarPaginacion && (
          <>
            <button
              className="bg-tec hover:bg-blue-500 text-white font-bold py-2 px-4 rounded mr-2"
              onClick={() => cambiarPagina(paginaActual - 1)}
              disabled={paginaActual === 1}
            >
              Anterior
            </button>
            <button
              className="bg-tec hover.bg-blue-500 text-white font-bold py-2 px-4 rounded mr-2"
              onClick={() => cambiarPagina(paginaActual + 1)}
              disabled={paginaActual === paginasTotales}
            >
              Siguiente
            </button>
          </>
        )}
      </div>
    </div>
  );
};

export default Table;
