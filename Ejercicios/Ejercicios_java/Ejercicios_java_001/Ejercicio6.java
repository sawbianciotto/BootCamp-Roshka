import java.util.Scanner;

public class Ejercicio6 {
    static void iniciar() {
        System.out.println("\nEjercicio 6 Ejecutado.");
        System.out.println("Ingrese el precio del producto");
        Scanner scanner = new Scanner(System.in);
        float precio = scanner.nextFloat();
        final float iva = 0.1f;
        float precio_iva = precio*iva;
        System.out.println(precio_iva);
        scanner.close();
    }
}
