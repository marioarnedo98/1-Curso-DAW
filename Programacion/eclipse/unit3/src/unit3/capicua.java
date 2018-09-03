package unit3;

public class capicua {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int n =232;
		int r,s=0,k;
		k=n;
	    while(n!=0)
		{    
		r=n%10;
		s=s*10+r;
		n=n/10;
	     	}
	     	System.out.print("\nel numero invertido es :"+s);
	     if(s==k)
		System.out.println ("\nEs capicua ");
		else
		System.out.println ("\nNo es capicua ");
	    }
}

