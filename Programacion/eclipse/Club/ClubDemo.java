
public class ClubDemo {

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Membership n1 = new Membership("Mario", 12, 1998);
		Membership n2 = new Membership("Marquitos", 5, 1998);
		Membership n3 = new Membership("Maria", 11, 1998);
		Membership n4 = new Membership("Raul", 1, 1999);
		Club c1 = new Club();
		c1.join(n1);
		c1.join(n2);
		c1.join(n3);
		c1.join(n4);
		System.out.println(c1.numberOfMembers());
		c1.print();
	}

}
