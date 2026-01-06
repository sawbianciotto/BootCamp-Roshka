package com.ejercicios_001;

import java.util.Scanner;

public class Ejercicio8 {
	static void iniciar() {
		System.out.println("\nEjercicio 8 Ejecutado.");
		System.out.println("Ingrese un numero");
		Scanner scanner = new Scanner(System.in);
		int numero = -1;
		do {
			numero = scanner.nextInt();
		} while (numero < 0);
		System.out.println(numero);
		scanner.close();
	}
}
