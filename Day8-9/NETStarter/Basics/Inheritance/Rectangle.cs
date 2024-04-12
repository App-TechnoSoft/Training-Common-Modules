// Write console app to calculate area and perimeter of different 2D shapes

class Rectangle
{
    // Default parameterless constructor
    // public Rectangle()
    // {        
    // }

    // Parameterized constructor
    public Rectangle(double l, double w)
    {
        length = l;
        width = w;
    }

    double length;
    double width;

    public double GetArea() => length * width;
    public double GetPerimeter() => 2 * (length + width);
}
