package com.ejercicios_001;

public class Ejercicio7 {
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
