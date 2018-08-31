import java.util.Arrays;

public class Matrix {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[][] matriz = { { 1, 4, 5, 6, 2, 5, 8, 3 }, { 1, 4, 5, 6, 2, 5, 8, 3 }, { 1, 4, 5, 6, 2, 5, 8, 3 },
				{ 1, 4, 5, 6, 2, 5, 8, 3 }, { 1, 4, 5, 6, 2, 5, 8, 3 } };
		System.out.println(matriz.length);
		System.out.println(matriz[0].length);
		for (int i = 0; i < matriz.length; i++) {
			System.out.println(Arrays.toString(matriz[i ]));
		}

	}
}
