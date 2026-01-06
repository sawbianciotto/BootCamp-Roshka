import java.util.Scanner;

public class Ejercicio10 {
    static void iniciar(){
        System.out.println("\nEjercicio 10 Ejecutado");
        System.out.println("Ingrese un dia de la semana");
        Scanner scanner = new Scanner(System.in);
        String dia = scanner.nextLine();
        String[] dias_nolaborales = {"Sabado", "Domingo"};
        int flag = 0;
        for (int i = 0; i < dias_nolaborales.length; i++) {
            if(dia.equals(dias_nolaborales[i])){
                System.out.println("Dia no Laboral");
                flag = 1;
            }
        }
        if(flag == 0){
            System.out.println("Dia Laboral");
        }
        scanner.close();
    }
}
