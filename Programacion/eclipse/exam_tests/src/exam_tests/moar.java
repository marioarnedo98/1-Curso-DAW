package exam_tests;

public class moar {
	public String mixString(String a, String b) {
		  String resultado="";
		  if(a.length()<=b.length()){
		    for(int i=0; i<a.length(); i++){
		      resultado+=a.substring (i,i+1) +b.substring (i,i+1);
		    }
		    resultado+=b.substring (a.length(),b.length());
		  }
		   else if (a.length()>b.length()){
		      for (int j=0; j<b.length();j++){
		        resultado+=a.substring(j,1+j)+ b.substring (j,j+1);
		      }
		      resultado+=a.substring (b.length(),a.length());
		    }
		  return resultado;
		}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
moar m1 = new moar();
System.out.println(m1.mixString("Hola", "Quetal"));

	}

}