public class Main {
    public static void main(String[] args) {
        System.out.println("Empieza el poker");
        GeneradorCartas generador = new GeneradorCartas();
        IdentificarJugada identificador = new IdentificarJugada();
        Carta[] cartas = new Carta[5];
        System.out.println("Cartas lanzadas:");
        int cant = 1;
        long promedio = 0;
        for (int k = 0; k < cant; k++) {
            long start = System.nanoTime();
            
            int flag = 0;
            do {
                boolean unica = true;
                Carta carta_tem = generador.generarCarta();
                for (int i = 0; i < 5; i++) {
                    if(carta_tem.equals(cartas[i])){
                        unica = false;
                    }
                }
                if (unica == true) {
                    cartas[flag] = carta_tem;
                    System.out.print(cartas[flag] + " ");
                    flag ++;
                    
                }
                
            } while (flag < 5);
            long end = System.nanoTime();
            promedio += (end - start);
        }
        System.out.println();
        System.out.println("Tiempo en nanosegundos:" + promedio/cant);
        System.out.println("Jugada: " + identificador.Identificar(cartas));
    }
}
