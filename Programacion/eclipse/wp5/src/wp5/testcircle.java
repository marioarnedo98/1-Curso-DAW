package wp5;

public class testcircle {
    public static void main(String[] args) {
        circle c1 = new circle();
        System.out.println("The circle of the radius of " + c1.getRadius() + " And area of " + c1.getArea());
        circle c2 = new circle(2.0);
        System.out.println("The circle of the radius of " + c2.getRadius() + " And area of " + c2.getArea());
        circle mt= new circle(8.0, "red");
        System.out.println("The circle of the radius of " + mt.getRadius() + " And area of " + mt.getArea());

    }
}