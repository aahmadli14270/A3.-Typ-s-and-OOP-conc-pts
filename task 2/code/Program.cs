using System;

class Animal{
    public void Speak()
    {
        Console.WriteLine("Animal Speak");
    }

    public virtual void Move()
    {
        Console.WriteLine("Animal Move");
    }
}

class Dog : Animal {
    public new void Speak()
    {
        Console.WriteLine("Dog Speak");
    }

    public override void Move()
    {
        Console.WriteLine("Dog Move");
    }
}

class Program {
    static void Main()
    {
        Dog dog = new Dog();
        Animal a = dog;

        Console.WriteLine("new:");
        dog.Speak();
        a.Speak();

        Console.WriteLine("override:");
        dog.Move();
        a.Move();
    }
}
