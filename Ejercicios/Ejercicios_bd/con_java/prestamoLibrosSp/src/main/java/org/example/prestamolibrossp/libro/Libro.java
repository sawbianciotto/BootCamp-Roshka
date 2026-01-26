package org.example.prestamolibrossp.libro;

import org.example.prestamolibrossp.editorial.Editorial;

import jakarta.persistence.*;

@Entity
@Table(name = "libro", schema = "Ejercicio 4")
public class Libro {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @Column(name = "\"libroNombre\"", nullable = false, length = Integer.MAX_VALUE)
    private String libroNombre;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "\"idEditorial\"", nullable = false)
    private Editorial idEditorial;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getLibroNombre() {
        return libroNombre;
    }

    public void setLibroNombre(String libroNombre) {
        this.libroNombre = libroNombre;
    }

    public Editorial getIdEditorial() {
        return idEditorial;
    }

    public void setIdEditorial(Editorial idEditorial) {
        this.idEditorial = idEditorial;
    }

}