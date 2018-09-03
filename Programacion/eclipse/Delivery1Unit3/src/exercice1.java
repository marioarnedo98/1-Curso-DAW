
public class exercice1 {
public String addToken(String chain, String token, int times) {
	String result = "";
	for (int c=0; c<times; c++) {
		if (c<times-1)
			result+=chain+token;
		else 
			result+=chain;
	}
return result;
}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
