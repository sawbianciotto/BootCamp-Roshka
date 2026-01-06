import java.util.Scanner;

public class Ejercicio9 {
    static void iniciar(){
        System.out.println("\nEjercicio 9 Ejecutado");
        System.out.println("Ingrese la contraseña");
        String contraseña = "hola123";
        Scanner scanner = new Scanner(System.in);
        int flag = 0;
        for (int i = 0; i < 3; i++) {
            String contra = scanner.nextLine();
            if (contra.equals(contraseña)){
                System.out.println("Correcto");
                flag = 1;
                break;
            }
        }
        if (flag == 0){
            System.out.println("Fallaste jajaja!!");
        }
        scanner.close();
    }
}
