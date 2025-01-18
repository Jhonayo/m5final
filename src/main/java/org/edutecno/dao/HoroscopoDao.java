package org.edutecno.dao;

import java.time.LocalDate;
import java.util.List;

import org.edutecno.modelo.HoroscopoEntity;

public interface HoroscopoDao {

    List<HoroscopoEntity> listarSignos();


    HoroscopoEntity obtenerSignoPorFecha(LocalDate fecha);


}
