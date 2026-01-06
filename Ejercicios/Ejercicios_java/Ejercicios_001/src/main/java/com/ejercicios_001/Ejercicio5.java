package com.ejercicios_001;

import java.util.Scanner;

public class Ejercicio5 {
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
		scanner.close();
	}
}
