public class Carta {
    private char valor;
    private char palo;

    public Carta(String carta){
        valor = carta.charAt(0);
        palo = carta.charAt(1);
    }

    public char getValor(){
        return valor;
    }

    public char getPalo(){
        return palo;
    }
    
    public int getValorNumerico(){
        switch (valor) {
            case 'A' : return 14;
            case 'K' : return 13;
            case 'Q' : return 12;
            case 'J' : return 11;
            case 'T' : return 10;
            default: return valor - '0';
        }
    }

    public String toString() {
        return "" + valor + palo;
    }
}
