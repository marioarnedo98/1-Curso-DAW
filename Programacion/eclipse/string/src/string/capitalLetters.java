package string;

public class capitalLetters {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
String n = "mario";
for(int i=0; i<n.length();i++) {
	System.out.println(n.charAt(i));
}
 n= "pepemario";
for(int i=0; i<n.length()/2;i++) {
	System.out.println(n.charAt(i));
}
n= "pepeJuan";
for(int i=n.length()/2;i<n.length() ;i++) {
	System.out.println(n.charAt(i));
}
n = "mario";
for(int i=0; i<n.length();i+=2) {
	System.out.println(n.substring(i,(i+2)));
}
}

}
