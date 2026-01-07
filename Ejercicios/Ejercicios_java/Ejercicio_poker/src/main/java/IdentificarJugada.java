public class IdentificarJugada {

    public String Identificar(Carta[] cartas){
        if (esEscaleraColor(cartas)) return "Escalera de Color";
        if (esPoker(cartas)) return "Poker";
        if (esFull(cartas)) return "Full";
        if (esColor(cartas)) return "Color";
        if (esEscalera(cartas)) return "Escalera";
        if (esTrio(cartas)) return "Trío";
        if (esDoblePar(cartas)) return "Doble Par";
        if (esPar(cartas)) return "Par";
        return "Carta Alta";
    }

    public boolean esEscaleraColor(Carta[] cartas){
        char palo = cartas[0].getPalo();
        int[] valores = new int[cartas.length];
        for (int i = 0; i < cartas.length; i++) {
            valores[i] = cartas[i].getValorNumerico();
            if(cartas[i].getPalo() != palo){
                return false;
            }
        }
        java.util.Arrays.sort(valores);
        
        //casos especiales
        // (A, 2, 3, 4, 5)
        if (valores[4] == 14 && valores[0] == 2 && valores[1] == 3 && valores[2] == 4 && valores[3] == 5) {
            return true;
        }
        // (10, 11, 12, 13, A)
        if (valores[0] == 10 && valores[1] == 11 && valores[2] == 12 && valores[3] == 13 && valores[4] == 14) {
            return true;
        }

        for (int i = 1; i < valores.length; i++) {
            if (valores[i] != valores[i - 1] + 1) {
                return false;
            }
        }
        return true;

    }

    public boolean esPoker(Carta[] cartas){
        int[] repeticiones = new int[5];
        for (int i = 0; i < cartas.length; i++) {
            int contador = 0;
            for (int j = 0; j < cartas.length; j++) {
                if (cartas[i].getValorNumerico() == cartas[j].getValorNumerico()) {
                    contador++;
                }
            }
            repeticiones[i] = contador;
        }
        boolean tienepoker = false;
        for (int rep : repeticiones) {
            if (rep == 4) tienepoker = true;
        }

        return tienepoker;
    }

    public boolean esFull(Carta[] cartas){
        int[] repeticiones = new int[5];
        for (int i = 0; i < cartas.length; i++) {
            int contador = 0;
            for (int j = 0; j < cartas.length; j++) {
                if (cartas[i].getValorNumerico() == cartas[j].getValorNumerico()) {
                    contador++;
                }
            }
            repeticiones[i] = contador;
        }

        boolean tieneTrio = false;
        boolean tienePar = false;
        for (int rep : repeticiones) {
            if (rep == 3) tieneTrio = true;
            if (rep == 2) tienePar = true;
        }
        return tieneTrio && tienePar;
    }

    public boolean esColor(Carta[] cartas){
        char palo = cartas[0].getPalo();
        for (int i = 0; i < cartas.length; i++) {
            if(cartas[i].getPalo() != palo){
                return false;
            }
        }
        return true;
    }

    public boolean esEscalera(Carta[] cartas){
        int[] valores = new int[cartas.length];

        for (int i = 0; i < cartas.length; i++) {
            valores[i] = cartas[i].getValorNumerico();
        }

        java.util.Arrays.sort(valores);
        for (int i = 1; i < valores.length; i++) {
            if (valores[i] != valores[i - 1] + 1) {
                return false;
            }
        }
        return true;
    }

    public boolean esTrio(Carta[] cartas){
        int[] repeticiones = new int[5];
        for (int i = 0; i < cartas.length; i++) {
            int contador = 0;
            for (int j = 0; j < cartas.length; j++) {
                if (cartas[i].getValorNumerico() == cartas[j].getValorNumerico()) {
                    contador++;
                }
            }
            repeticiones[i] = contador;
        }
        boolean tieneTrio = false;
        for (int rep : repeticiones) {
            if (rep == 3) tieneTrio = true;
        }

        return tieneTrio;
    }

    public boolean esDoblePar(Carta[] cartas){
        int[] repeticiones = new int[5];
        for (int i = 0; i < cartas.length; i++) {
            int contador = 0;
            for (int j = 0; j < cartas.length; j++) {
                if (cartas[i].getValorNumerico() == cartas[j].getValorNumerico()) {
                    contador++;
                }
            }
            repeticiones[i] = contador;
        }

        int cantidadPares = 0;
        boolean tienePar = false;
        for (int rep : repeticiones) {
            if (rep == 2) cantidadPares ++;
        }
        if(cantidadPares == 4){
            tienePar = true;
        }
        return tienePar;
    }

    public boolean esPar(Carta[] cartas){
        int[] repeticiones = new int[5];
        for (int i = 0; i < cartas.length; i++) {
            int contador = 0;
            for (int j = 0; j < cartas.length; j++) {
                if (cartas[i].getValorNumerico() == cartas[j].getValorNumerico()) {
                    contador++;
                }
            }
            repeticiones[i] = contador;
        }

        boolean tienePar = false;
        for (int rep : repeticiones) {
            if (rep == 2) tienePar = true;
        }
        return tienePar;
    }

}

