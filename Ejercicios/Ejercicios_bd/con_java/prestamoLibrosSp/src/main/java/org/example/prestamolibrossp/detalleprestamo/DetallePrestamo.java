package org.example.prestamolibrossp.detalleprestamo;
import org.example.prestamolibrossp.libro.Libro;
import org.example.prestamolibrossp.prestamo.Prestamo;

import com.fasterxml.jackson.annotation.JsonBackReference;

import jakarta.persistence.*;

@Entity
@Table(name = "\"detallePrestamo\"", schema = "Ejercicio 4")
public class DetallePrestamo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "\"idPrestamo\"", nullable = false)
    @JsonBackReference
    private Prestamo idPrestamo;

    @ManyToOne(fetch = FetchType.EAGER, optional = false)
    @JoinColumn(name = "\"idLibro\"", nullable = false)
    private Libro idLibro;

    public void setDatosDetallePrestamo(Prestamo prestamo, Libro libro) {
        this.idPrestamo = prestamo;
        this.idLibro = libro;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Prestamo getIdPrestamo() {
        return idPrestamo;
    }

    public void setIdPrestamo(Prestamo idPrestamo) {
        this.idPrestamo = idPrestamo;
    }

    public Libro getIdLibro() {
        return idLibro;
    }

    public void setIdLibro(Libro idLibro) {
        this.idLibro = idLibro;
    }

}