package crud.tablas;

import modelos.DetallePrestamo;

public interface DetallePrestamoInterfza {
    void crearDetallePrestamo(DetallePrestamo detallePrestamo);
    DetallePrestamo lDetallePrestamo(int id);
    void actualizarDetallePrestamo(DetallePrestamo detallePrestamo);
}
