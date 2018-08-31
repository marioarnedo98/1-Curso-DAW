package bluej_author_book;
	/**
	 * Write a description of class Book here.
	 * 
	 * @author (your name) 
	 * @version (a version number or a date)
	 */
	public class Book
	{
	    // instance variables - replace the example below with your own
	    private String title;
	    private int pages;
	    private Author autho; 
	    /**
	     * Constructor for objects of class Author
	     */
	    public Book(String title, int pages, Author author)
	    {
	        // Iniciales 
	        this.title = title;
	        this.pages =pages;
	        this.autho = author;
	    }

	    /**
	     * Print invididualy 
	     */
	    public void name()
	    {
	        // put your code here
	        this.title=title;
	        System.out.println(title);
	    }
	    public void pages()
	    {
	        // put your code here
	        this.pages=pages;
	        System.out.println(pages);
	    }
	    public void author()
	    {
	        // put your code here
	        this.autho=autho;
	        System.out.println(autho);
	    }
	    /**
	     * Print all
	     */
	    public void printall()
	    {
	        // put your code here
	        this.title=title;
	        System.out.println("This books have this title "+title);
	        this.pages=pages;
	        System.out.println("They have this "+pages +" pages");
	        this.autho=autho;
	        System.out.println("The author is ");
	        autho.printName();
	    }
	}

