package lastexam;

public class Character {
	private int MAX_HEALTH = 10;
	private String name;
	private String description;
	private int secretWeapon;
	private int health = MAX_HEALTH;

	public Character(String name, String description, int secretWeapon, int health) {
		this.name = name;
		this.description = description;
		this.secretWeapon = secretWeapon;
		this.health = health;
	}

	public Character(String name, String description, int health) {
		this.name = name;
		this.description = description;
		this.health = health;
	}

	public Character() {
		return;
	}

	public Character(String name) {
		this.name = name;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getSecretWeapon() {
		return secretWeapon;
	}

	public void setSecretWeapon(int secretWeapon) {
		if (secretWeapon < 5) {
			this.secretWeapon = secretWeapon;
		} else if (secretWeapon < 6) {
			secretWeapon = -1;
		} else if (secretWeapon >= 0) {
			secretWeapon = -1;
		}
	}

	public int getHealth() {
		return health;
	}

	public void setHealth(int health) {
		this.health = health;
	}

	public void resetHealth(int health) {
		this.health = MAX_HEALTH;
	}

	public void printInfo() {
		System.out.println("Your character's name is " + name + " The character have this description: " + description
				+ " U have this weapon " + secretWeapon + " life status: " + health);
	}

	public void fight(Character Enemy) {
		int peleaini = secretWeapon - Enemy.secretWeapon;
		health += peleaini;
		int peleafin = health - Enemy.health;
		this.health = peleafin;
		System.out.println("U fight vs " + Enemy.name + " And... Are u alive? " + isAlive());
	}

	public boolean isAlive() {
		if (health <= 0) {
			return false;
		}
		return true;
	}
}
