package string;

import java.util.Random;
import java.util.Scanner;


public class ej20 {

    public ej20() {
        Scanner scanner = new Scanner(System.in);
        String [] listaPalabras = {"avion","barco","computadora","dinosaurio","elefante","foca","gato","hielo","iguana","jabon"};
        
        //Elegimos un numero random, que sera el numero de palabra que legiremos de la lista de palabras
        int numeroRandom = 1 + new Random().nextInt(listaPalabras.length);
        
        String palabraEscogida = listaPalabras[numeroRandom];//Guardamos la palabra escogida por la pc en una variable
        System.out.println("Esta palabra tiene "+palabraEscogida.length()+" letras");
        String[] palabra = new String[palabraEscogida.length()];//si se llena todos los espacios de este array es que ha ganado el juego
        imprimirPalabra(palabra);//Mostramos las rayitas
        int vidas = 15;//Contador de vidas
        
        while(true) {
            System.out.println("*************************************************");
            System.out.println("Escoge una letra");
            String letraElegidaPorUsuario = scanner.nextLine();
            String[] letras = palabraEscogida.split("");
            int contador = 0;
            
            boolean acertoAlguna = false;
            //Recorremos cada letra de la palabra para comprobar si hay una igualdad
            for (String letra : letras) {
                if(letraElegidaPorUsuario.equals(letra)) {
                    palabra[contador] = letraElegidaPorUsuario;
                    acertoAlguna = true;
                }
                contador++;
            }
            if(acertoAlguna) {
                System.out.println("Has acertado una palabra");
                System.out.println("Te quedan "+vidas+" vidas");
            }
            else{
                vidas --;
                System.out.println("No has acertado ninguna palabra");
                if(vidas == 0) {
                    System.out.println("Se te acabaron las vidas, quedas ahorcado x(");
                    break;
                }
                else{
                    System.out.println("Te quedan "+vidas+" vidas");
                }
            }
            System.out.println("Hasta el momento vas: ");
            imprimirPalabra(palabra);
            contador = 0;
            acertoAlguna = false;
            if (gano(palabra)){
                System.out.println("Has completado la palabra");
                break;
            }
        }
    }
    
    public void imprimirPalabra(String[] palabra) {
        //Este metodo imprime las letras que ha acertado el usuario hasta el momento.
        for (String letra : palabra) {
            if(letra != null) {
                System.out.print(letra);
            }
            else{
                System.out.print("-");
            }
        }
        System.out.println("");
    }
    
    public boolean gano(String[] palabra) {
        boolean gano = true;
        
        for (String letra : palabra) {
            if(letra == null) {
                gano = false;
                break;
            }
        }
        
        return gano;
    }
    
    public static void main(String[] args) {
        //String[] asd = new String[10];
        new ej20();
    }
}
