package wp5;
public class Rectangle extends shape{
    private double width =1.0;
    private double lenght =1.0;
    public Rectangle(){
        width = 1.0;
        lenght= 1.0;
    }
    public Rectangle (double width, double lenght){
        this.lenght=lenght;
        this.width=width;
    }
    public double GetWidth(){
        return width;
    }
    public void setWidth(double width){
        this.width=width;
    }
    public double GetLenght(){
        return lenght;
    }
    public void setlenght(double lenght){
        this.lenght=lenght;
    }
    public double getArea(){
        return width*lenght;
    }
    public double getPerimeter(){
        return lenght*2+width*2;
    }
}