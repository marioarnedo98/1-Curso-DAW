
public class ejercice2 {
public boolean exercice2(String chain) {
	/*I'm gonna to put 2 variables for the times that (invidually) apears each word*/
	int e=0;
	int o=0;
	for (int m=0; m<chain.length()-2;m++) {
		if (chain.substring(m, m+8).equals("elephant"))e++;
		if (chain.substring(m, m+5).equals("mouse"))o--;
	}
/*And now i'm gonna to check that elephant and mouse shows the same time, or the result is false*/
	return (e==o);
}
	public static void main(String[] args) {
		// TODO Auto-generated method stub

	}

}
