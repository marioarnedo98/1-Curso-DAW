package increible;
import java.util.ArrayList;

import java.util.Random;

 

/**

 * Esta clase define objetos que contienen tantos enteros aleatorios entre 0 y 1000 como se le definen al crear un objeto

 * @author: Mario Arnedo

 * @version: 13/02/2018 Alhpa

 * @see <a href = "http://trendsliving.es" /> Mi casa � To wpa </a>

 */

public class wow {

 

    //Campos de la clase

    private ArrayList<Integer> serieAleatoria;

    /**

     * Constructor para la serie de n�meros aleatorios

     * @param numeroItems El par�metro numeroItems define el n�mero de elementos que va a tener la serie aleatoria

     */

    public wow (int numeroItems) {

        serieAleatoria = new ArrayList<Integer> ();

        for (int i=0; i<numeroItems; i++) {  serieAleatoria.add(0);  }

        System.out.println ("Serie inicializada. El n�mero de elementos en la serie es: " + getNumeroItems() );

    } //Cierre del constructor

    /**

     * M�todo que devuelve el n�mero de �tems (n�meros aleatorios) existentes en la serie

     * @return El n�mero de �tems (n�meros aleatorios) de que consta la serie

     */

    public int getNumeroItems() { return serieAleatoria.size(); }

    /**

     * M�todo que genera la serie de n�meros aleatorios

     */

    public void generarSerieDeAleatorios () {

        Random numAleatorio;

        numAleatorio = new Random ();

        for (int i=0; i < serieAleatoria.size(); i++) { serieAleatoria.set(i, numAleatorio.nextInt(1000) ); }

        System.out.print ("Serie generada! ");

    } //Cierre del m�todo

} //Cierre de la clase y del ejemplo aprenderaprogramar.com