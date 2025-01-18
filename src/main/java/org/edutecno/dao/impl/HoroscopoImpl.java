package org.edutecno.dao.impl;

import java.time.LocalDate;
import java.util.List;

import org.edutecno.dao.HoroscopoDao;
import org.edutecno.modelo.HoroscopoEntity;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;

public class HoroscopoImpl implements HoroscopoDao {
    private final SessionFactory factory;

    public HoroscopoImpl() {
        factory = new Configuration().configure().buildSessionFactory();
    }

    @Override
    public List<HoroscopoEntity> listarSignos() {
        try (Session session = factory.openSession()) {
            return session.createQuery("from HoroscopoEntity", HoroscopoEntity.class).list();
        }
    }

    @Override
    public HoroscopoEntity obtenerSignoPorFecha(LocalDate fecha) {
        try (Session session = factory.openSession()) {
            HoroscopoEntity horoscopo = session.createQuery(
                            "FROM HoroscopoEntity WHERE :fecha BETWEEN fechaInicio AND fechaFin",
                            HoroscopoEntity.class
                    )
                    .setParameter("fecha", fecha)
                    .uniqueResult();

            if (horoscopo != null) {
                session.refresh(horoscopo);
            }
            return horoscopo;
        }
    }
}


