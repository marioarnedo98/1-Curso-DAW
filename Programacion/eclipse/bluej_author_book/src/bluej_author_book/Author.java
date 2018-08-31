package bluej_author_book;
/**
 * Write a description of class Author here.
 * 
 * @author (your name) 
 * @version (a version number or a date)
 */
public class Author 
{
    // instance variables - replace the example below with your own
    private String name ="Pepe";
    private int age=56;
   
    public Author(){
        this.name="Pepe";
        this.age =56;
    }
    public Author(String name, int pages){
        this.name=name;
        this.age=age;
    }
    

    /**
     * An example of a method - replace this comment with your own
     * 
     * @param  y   a sample parameter for a method
     * @return     the sum of x and y 
     */
    public void printName()
    {
        // put your code here
        this.name=name;
        System.out.println(name);
    }
 /** 
  * Calculate the age of the people
  */
 public void calculateage(){
     this.age=age;
     int newage = 2017-age;
     System.out.println(newage);
    }
    /**
     * Change the age.
     */
    public void SetterAge(int replacementAge)
    {
        age = replacementAge;
    }
 /** 
  * Full Print
  */
 public void printall(){
     this.age=age;
     int newage = 2017-age;
     //System.out.println(newage);
     System.out.println("Name of author:"+name);
     System.out.println("Age of author:"+age);
     System.out.println ("the year he was born is:"+newage);
    }
}
