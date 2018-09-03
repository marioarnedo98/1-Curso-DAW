package unit3;

public class ej2 {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		for (int linea=0;linea<5;linea++){
			for (int espacio=0;espacio<6-linea;espacio++){
				System.out.print(" ");
			}
			for (int punto=1;punto<2;punto++){
				System.out.print("*");
			}
			for (int coma=1;coma<+linea*2;coma++){
				System.out.print(".");
			}
			if (linea>=1){
			for (int punto=0;punto<1;punto++){
				System.out.print("*");}
			}
			System.out.println();
			;
		}
	System.out.print("   *******");
	}

}
