import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Ejercicio1.iniciar();
        Ejercicio2.iniciar();
        Ejercicio3.iniciar();
        Ejercicio4.iniciar();
        Ejercicio5.iniciar();
        Ejercicio6.iniciar();
        Ejercicio7.iniciar();
        Ejercicio8.iniciar();
        Ejercicio9.iniciar();
        Ejercicio10.iniciar();

    }
}

class Ejercicio1 {
    static void iniciar() {
        System.out.println("Ejercicio 1 ejecutado.");
        int a = 5;
        int b = 10;
        System.out.printf("Los numeros son %d y %d\n", a,b);
        System.out.printf("La suma es: %d, Resta: %d, Multiplicacion: %d, Division: %d, Modulo: %d\n",(a + b), (a - b), (a * b), (a / b), (a % b) );
        //%d es enteros, %f es decimales, %s string
    }
}

class Ejercicio2 {
    static void iniciar() {
        System.out.println("\nEjercicio 2 Ejecutado.");
        int a = 10;
        int b = 20;
        if (a > b){
            System.out.println("El numero a es mayor que el numero b");
        }
        else if (a < b){
            System.out.println("El numero b es mayor que el numero a");
        }
        else {
            System.out.println("Los numeros a y b son iguales");
        }
    }
}

class Ejercicio3 {
   static void iniciar() {
        System.out.println("\nEjercicio 3 Ejecutado.");
        String minombre = "Augusto Bianciotto";
        System.out.println("Bienvenido " + minombre);
   }
}

class Ejercicio4 {
    static void iniciar() {
        System.out.println("\nEjercicio 4 Ejecutado.");
        System.out.println("Ingresa su nombre");
        Scanner scanner = new Scanner(System.in);
        String userName = scanner.nextLine();
        //System.out.println(userName);

    }
}

class Ejercicio5 {
    static void iniciar() {
        System.out.println("\nEjercicio 5 Ejecutado.");
        System.out.println("Ingrese un numero");
        Scanner scanner = new Scanner(System.in);
        int numero = scanner.nextInt();
        if (numero % 2 == 0) {
            System.out.println("El numero es divisible entre 2");
        }
        else{
            System.out.println("El numero no es divisible entre 2");
        }
    }
}

class Ejercicio6 {
    static void iniciar() {
        System.out.println("\nEjercicio 6 Ejecutado.");
        System.out.println("Ingrese el precio del producto");
        Scanner scanner = new Scanner(System.in);
        float precio = scanner.nextFloat();
        final float iva = 0.1f;
        float precio_iva = precio*iva;
        System.out.println(precio_iva);

    }
}

class Ejercicio7 {
    static void iniciar() {
        System.out.println("\nEjercicio 7 Ejecutado.");
        for (int i = 1; i < 101; i++) {
            if(i % 2 == 0){
                System.out.println(i);
            }
            else if (i % 3 == 0){
                System.out.println(i);
            }
        }
    }
}

class Ejercicio8 {
    static void iniciar() {
        System.out.println("\nEjercicio 8 Ejecutado.");
        System.out.println("Ingrese un numero");
        Scanner scanner = new Scanner(System.in);
        int numero = -1;
        do {
            numero = scanner.nextInt();
        } while (numero < 0);
        System.out.println(numero);
    }
}

class Ejercicio9 {
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
    }
}

class Ejercicio10 {
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
    }
}




