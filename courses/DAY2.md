# #[Ruby programming language](https://www.ruby-lang.org/en/documentation/)
<img src="http://vskills.in/certification/blog/wp-content/uploads/2014/12/ruby-a-programmers-best-friend-indeed.png" width="100" height="100"/>

## Class, Object
- A class in Ruby always starts with the keyword class followed by the name of the class. The name should always be in initial capitals.
```
class Classname
end
```

- Variable:
  + **Local Variables**: The variables that are defined in a method. Local variables are not available outside the method. Local variables begin with a lowercase letter or _.
  + **Instance Variables**: Available across methods for any particular instance or object. Instance variables are preceded by the at sign (@) followed by the variable name.
  + **Class Variables**: Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.
  + **Global Variables**: you need to define a global variable. The global variables are always preceded by the dollar sign ($).
  
- Creating Objects in Ruby using new Method
```
user = User.new
product = Product.new
```
