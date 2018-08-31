package lastexam;

public class Enemy extends Character {
	private String default_scary_msg = "Do you want to know what the fear is?";
	private int secretWeapon = 1;

	public Enemy(String name, String description, int health) {
		this.setName(name);
		this.setDescription(description);
		this.setHealth(health);
	}

	public void Scare() {
		System.out.println(default_scary_msg);
	}

	public void Scare(String name) {
		System.out.println(name + " Scares you " + default_scary_msg);
	}
}
