package org.example.prestamolibrossp.editorial;

import jakarta.persistence.*;

@Entity
@Table(name = "editorial", schema = "Ejercicio 4")
public class Editorial {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "\"editorialNombre\"", nullable = false, length = Integer.MAX_VALUE)
    private String editorialNombre;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getEditorialNombre() {
        return editorialNombre;
    }

    public void setEditorialNombre(String editorialNombre) {
        this.editorialNombre = editorialNombre;
    }

}