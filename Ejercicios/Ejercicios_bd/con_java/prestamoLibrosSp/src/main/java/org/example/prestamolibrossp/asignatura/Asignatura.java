package org.example.prestamolibrossp.asignatura;

import jakarta.persistence.*;

@Entity
@Table(name = "asignatura", schema = "Ejercicio 4")
public class Asignatura {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "\"asignaturaNombre\"", nullable = false, length = Integer.MAX_VALUE)
    private String asignaturaNombre;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getAsignaturaNombre() {
        return asignaturaNombre;
    }

    public void setAsignaturaNombre(String asignaturaNombre) {
        this.asignaturaNombre = asignaturaNombre;
    }

}