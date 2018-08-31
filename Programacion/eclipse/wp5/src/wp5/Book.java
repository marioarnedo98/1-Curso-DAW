package wp5;

public class Book {
	private String name;
	private Author author;
	private double price;
	private int qtyInStock = 0;

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Author getAuthor() {
		return author;
	}

	public void setAuthor(Author author) {
		this.author = author;
	}

	public double getPrice() {
		return price;
	}

	public void setPrice(double price) {
		this.price = price;
	}

	public int getQtyInStock() {
		return qtyInStock;
	}

	public void setQtyInStock(int qtyInStock) {
		this.qtyInStock = qtyInStock;
	}

	public Book(String name, Author author, double price) {

	}

	public Book(String name, Author author, double price, int qtyInStock) {

	}

	public static void main(String[] args) {
		// TODO Auto-generated method stub
		Author a = new Author("Mario", "Joseba@joseba.com", 'f');
		Book b = new Book("Joseba", a, 100);
		System.out.println(b.toString());
	}

}
