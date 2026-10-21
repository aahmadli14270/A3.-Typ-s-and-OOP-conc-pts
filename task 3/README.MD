EXPLANATION OF CODE:
There are 3 child classes - DVD, Book, CD which inherit from LibraryItem class. They have their separate initializers (constructors) but they also interit parent class's constructor too. Book class also utilizes parent class's display function with super keyword. 

Additionally I also used attr_read (java getter method alternative) at LibraryItem, since I have additional method find_by_title which is outside of libraryItem. So, in order to make that function work, we need to use attr_read. Ruby only has access modifiers to methods unlike java language, so we cannot directly put public, protected, or private to make use of a field at outside of an object as I observed. 

Additional to what is asked I also tried override at Ruby. I have overriden to_s() method of Ruby which is toString() method of Java. Any new defined class inherits from "Object" class, so they always have that function and that function outputs class name and encoded object ID. Since I override it for each class, now it displays object details (same thing with display_info function).

The other things are implemented from task description itself, I just augmented code with several other functions and class fields.
