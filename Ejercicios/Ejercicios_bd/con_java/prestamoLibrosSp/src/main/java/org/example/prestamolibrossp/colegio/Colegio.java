package org.example.prestamolibrossp.colegio;

import jakarta.persistence.*;

@Entity
@Table(name = "colegio", schema = "Ejercicio 4")
public class Colegio {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "\"nombreColegio\"", nullable = false, length = Integer.MAX_VALUE)
    private String nombreColegio;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getNombreColegio() {
        return nombreColegio;
    }

    public void setNombreColegio(String nombreColegio) {
        this.nombreColegio = nombreColegio;
    }

}