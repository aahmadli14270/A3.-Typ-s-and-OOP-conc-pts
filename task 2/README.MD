CODE FILE IS: Program.cs

Output of code:
new:
Dog Speak

Animal Speak

Animal Speak

override:

Dog Move

Dog Move

Dog Move


DISCUSSION of code and concept:
Dog object and Animal Object both point to the same object which is Dog. Virtual keyword I put at Animal class means that move() function can be override by other class which extends (inherits) Animal class. If we do not put it would not compile. In java-like languages we do not have virtual keyword's alternative, if we inherit from other class, we will be directly able to override that function unless we do not put final keyword at there (final is opposite of virtual keyword at java, and there is no equivalent of virtual at java-like languages).

Since dog inherits from Animal, it gets implementation of both functions at the first place, that is why we do not need to define Animal's functions at there unless we want to override any of it. 

Now coming to the "new" Keyword: 
Override keyword directly overrides dog's move function, it will have one move method. But in the case of "new" keyword, it just hides main class's method and has also new method like override case. So, if we do call dog.speak() it will be "Dog speak". But if we typecast it like this "((Animal)dog).Speak();" it will give "Animal Speak", because it also has animal's speak method. If we do it with overriden function, it would give same result for both of it - "Dog Move".

In code I didn't used typecasting to show that, instead I init Animal variables which points to dog object. So it is also gives same effect of ((Animal)dog).Speak(); - typecasting. 

