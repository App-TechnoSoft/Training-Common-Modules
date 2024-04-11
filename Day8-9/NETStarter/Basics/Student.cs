class Student
{
    public string name;
    public string address;
    public int roll;
    public DateTime dob;

    public void PrintDetails()
    {
        Console.WriteLine($"{name} {address} {roll} {dob}");
    }
}
