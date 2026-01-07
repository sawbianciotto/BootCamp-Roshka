public class GeneradorCartas {
	private static final char[] valores_posibles = {'A', '2', '3', '4', '5', '6', '7', '8', '9', 'T', 'J', 'Q', 'K'};
	private static final char[] palos_posibles = {'S', 'C', 'H', 'D'};

    public Carta generarCarta(){
        int num1 = (int)(Math.random() * valores_posibles.length);
        int num2 = (int)(Math.random() * palos_posibles.length);
        String cadena = "" + valores_posibles[num1] + palos_posibles[num2];
        return new Carta(cadena);
    }
}
