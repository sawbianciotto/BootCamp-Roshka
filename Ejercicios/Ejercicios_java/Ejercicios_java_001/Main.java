import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        System.out.println("Ingrese el numero del ejercicio que quiera probar");
        Scanner scanner = new Scanner(System.in);
        int num = scanner.nextInt();
        switch (num) {
            case 1:
                Ejercicio1.iniciar();    
                break;
            case 2:
                Ejercicio2.iniciar();
                
                break;
            case 3:
                Ejercicio3.iniciar();
                
                break;
            case 4:
                Ejercicio4.iniciar();
                
                break;
            case 5:
                Ejercicio5.iniciar();
                
                break;
            case 6:
                Ejercicio6.iniciar();
                
                break;
            case 7:
                Ejercicio7.iniciar();
                
                
                break;
            case 8:
                Ejercicio8.iniciar();
                
                break;
            case 9:
                Ejercicio9.iniciar();
                
                break;
            case 10:
                Ejercicio10.iniciar();
                break;
                        
            case 0:
                break;
        }
    }
}




