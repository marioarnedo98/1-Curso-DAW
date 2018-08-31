
public class ejer3 {
int cantidadpeques;
int cantidadgrandes;
int kilosnecesarios;
int kilosquetengo;
public ejer3(int kilosnecesarios,int cantidadgrandes,int cantidadpeques){
	this.cantidadgrandes=cantidadgrandes;
	this.cantidadpeques=cantidadpeques;
	this.kilosnecesarios=kilosnecesarios;
	kilosquetengo=(cantidadgrandes*5)+(cantidadpeques*1)
	;
}
public void pastasuficiente(){
	if (kilosnecesarios<=kilosquetengo){System.out.println("Tienes suficiente para cocinar");
	}else{
		System.out.println("vete a comprar. no tienes suficiente");

	}
	;
}
	public static void main(String[] args) {
	ejer3 t1= new ejer3(72,15,8);
	t1.pastasuficiente();

	}

}
