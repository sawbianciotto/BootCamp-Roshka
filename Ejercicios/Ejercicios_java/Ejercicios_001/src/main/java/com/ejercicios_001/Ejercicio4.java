package com.ejercicios_001;

import java.util.Scanner;

public class Ejercicio4 {
	static void iniciar() {
		System.out.println("\nEjercicio 4 Ejecutado.");
		System.out.println("Ingresa su nombre");
		Scanner scanner = new Scanner(System.in);
		String userName = scanner.nextLine();
		scanner.close();
	}
}
