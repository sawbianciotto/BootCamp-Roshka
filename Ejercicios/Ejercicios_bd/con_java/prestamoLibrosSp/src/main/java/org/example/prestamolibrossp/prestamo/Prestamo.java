package org.example.prestamolibrossp.prestamo;

import jakarta.persistence.*;
import java.util.List;

import org.example.prestamolibrossp.asignatura.*;
import org.example.prestamolibrossp.aula.Aula;
import org.example.prestamolibrossp.curso.Curso;
import org.example.prestamolibrossp.detalleprestamo.DetallePrestamo;
import org.example.prestamolibrossp.profesor.Profesor;

import com.fasterxml.jackson.annotation.JsonManagedReference;

import org.example.prestamolibrossp.colegio.*;
import java.time.LocalDate;

@Entity
@Table(name = "prestamo", schema = "Ejercicio 4")
public class Prestamo {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id", nullable = false)
    private Integer id;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "\"idProfesor\"", nullable = false)
    private Profesor idProfesor;

    @Column(name = "\"fechaPrestamo\"", nullable = false)
    private LocalDate fechaPrestamo;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "\"idCurso\"", nullable = false)
    private Curso idCurso;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "\"idColegio\"", nullable = false)
    private Colegio idColegio;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "\"idAula\"", nullable = false)
    private Aula idAula;

    @ManyToOne(fetch = FetchType.LAZY, optional = false)
    @JoinColumn(name = "\"idAsignatura\"", nullable = false)
    private Asignatura idAsignatura;

    @OneToMany(mappedBy = "idPrestamo", fetch = FetchType.LAZY, cascade = CascadeType.ALL, orphanRemoval = true)
    @JsonManagedReference
    private List<DetallePrestamo> detalles;

    public List<DetallePrestamo> getDetalles() {
        return detalles;
    }

    public void setDetalles(List<DetallePrestamo> detalles) {
        this.detalles = detalles;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Profesor getIdProfesor() {
        return idProfesor;
    }

    public void setIdProfesor(Profesor idProfesor) {
        this.idProfesor = idProfesor;
    }

    public LocalDate getFechaPrestamo() {
        return fechaPrestamo;
    }

    public void setFechaPrestamo(LocalDate fechaPrestamo) {
        this.fechaPrestamo = fechaPrestamo;
    }

    public Curso getIdCurso() {
        return idCurso;
    }

    public void setIdCurso(Curso idCurso) {
        this.idCurso = idCurso;
    }

    public Colegio getIdColegio() {
        return idColegio;
    }

    public void setIdColegio(Colegio idColegio) {
        this.idColegio = idColegio;
    }

    public Aula getIdAula() {
        return idAula;
    }

    public void setIdAula(Aula idAula) {
        this.idAula = idAula;
    }

    public Asignatura getIdAsignatura() {
        return idAsignatura;
    }

    public void setIdAsignatura(Asignatura idAsignatura) {
        this.idAsignatura = idAsignatura;
    }
}
