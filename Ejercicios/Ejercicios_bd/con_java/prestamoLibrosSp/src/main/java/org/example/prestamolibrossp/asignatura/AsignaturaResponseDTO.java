package org.example.prestamolibrossp.asignatura;
import com.fasterxml.jackson.annotation.JsonPropertyOrder;

@JsonPropertyOrder({
    "id",
    "asignaturaNombre"
})

public class AsignaturaResponseDTO {
    private int id;
    private String asignaturaNombre;
    public int getId() { return id; }
    public void setId(int id) { this.id = id; }
    public String getAsignaturaNombre() { return asignaturaNombre; }
    public void setAsignaturaNombre(String asignaturaNombre) { this.asignaturaNombre = asignaturaNombre; }
}
