
public class template {
public static void PrintArray (int[] array) {
	for (int i=0;i<array.length;i++) {
		System.out.print(array[i]+" ");
	}
}
public static void changeArray (int[] array) {
	for (int i=0;i<array.length;i++) {
		array[i]=array[i]*2;
	}
}
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] arr= {1,5,9,45};
		PrintArray(arr);
		System.out.println(" ");
		changeArray(arr);
		PrintArray(arr);
	}

}
