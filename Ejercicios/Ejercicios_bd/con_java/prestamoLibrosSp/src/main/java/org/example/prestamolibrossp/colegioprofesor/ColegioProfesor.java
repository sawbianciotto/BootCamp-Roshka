package org.example.prestamolibrossp.colegioprofesor;

import org.example.prestamolibrossp.profesor.*;
import org.example.prestamolibrossp.colegio.*;


import jakarta.persistence.*;

@Entity
@Table(name = "\"ColegioProfesor\"", schema = "Ejercicio 4")
public class ColegioProfesor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "\"idColegio\"", nullable = false)
    private Colegio idColegio;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "\"idProfesor\"", nullable = false)
    private Profesor idProfesor;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Colegio getIdColegio() {
        return idColegio;
    }

    public void setIdColegio(Colegio idColegio) {
        this.idColegio = idColegio;
    }

    public Profesor getIdProfesor() {
        return idProfesor;
    }

    public void setIdProfesor(Profesor idProfesor) {
        this.idProfesor = idProfesor;
    }

}