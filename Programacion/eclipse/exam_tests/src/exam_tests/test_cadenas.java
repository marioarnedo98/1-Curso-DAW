package exam_tests;

public class test_cadenas {
	public boolean bobThere(String str) {
		for(int i=0;i<=str.length()-2;i++){
		  if(str.charAt(i)=='m' && str.charAt(i=i+1)=='v')
		  return true;

		}


		return false;
		}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
test_cadenas t1= new test_cadenas();
System.out.println(t1.bobThere("mvHola"));

	}

}
