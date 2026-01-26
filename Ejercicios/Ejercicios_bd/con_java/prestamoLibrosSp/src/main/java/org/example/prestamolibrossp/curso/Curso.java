package org.example.prestamolibrossp.curso;

import jakarta.persistence.*;

@Entity
@Table(name = "curso", schema = "Ejercicio 4")
public class Curso {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "\"nombreCurso\"", nullable = false, length = Integer.MAX_VALUE)
    private String nombreCurso;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreCurso() {
        return nombreCurso;
    }

    public void setNombreCurso(String nombreCurso) {
        this.nombreCurso = nombreCurso;
    }

}