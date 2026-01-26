package org.example.prestamolibrossp.aula;

import jakarta.persistence.*;

@Entity
@Table(name = "aula", schema = "Ejercicio 4")
public class Aula {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "\"nombreAula\"", nullable = false, length = Integer.MAX_VALUE)
    private String nombreAula;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreAula() {
        return nombreAula;
    }

    public void setNombreAula(String nombreAula) {
        this.nombreAula = nombreAula;
    }

}