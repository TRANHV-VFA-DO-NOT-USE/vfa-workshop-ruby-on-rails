# #[Ruby programming language](https://www.ruby-lang.org/en/documentation/)
<img src="http://vskills.in/certification/blog/wp-content/uploads/2014/12/ruby-a-programmers-best-friend-indeed.png" width="100" height="100"/>

## Class, Object
- A class in Ruby always starts with the keyword class followed by the name of the class. The name should always be in initial capitals.
```
class Classname
end
```

- Creating Objects in Ruby using new Method
```
user = User.new
product = Product.new
```

## Function
 - In Ruby, functions are called methods. Each method in a class starts with the keyword def followed by the method name.
 - The method name always preferred in lowercase letters. You end a method in Ruby by using the keyword end.
 
 ```
 class User
   def fullname
      statement 1
      statement 2
   end
end
 ```
## Variable:

  + **Global Variables**: you need to define a global variable. The global variables are always preceded by the dollar sign ($).
 ```
    #!/usr/bin/ruby

  $global_variable = 10
  class Class1
     def print_global
        puts "Global variable in Class1 is #$global_variable"
     end
  end
  class Class2
     def print_global
        puts "Global variable in Class2 is #$global_variable"
     end
  end
  ```
Run test:
  ```
  class1obj = Class1.new
  class1obj.print_global
  class2obj = Class2.new
  class2obj.print_global
  ```
  + **Instance Variables**: Available across methods for any particular instance or object. Instance variables are preceded by the at sign (@) followed by the variable name.
  ```
  #!/usr/bin/ruby

  class Customer
     def initialize(id, name, addr)
        @cust_id = id
        @cust_name = name
        @cust_addr = addr
     end
     def display_details()
        puts "Customer id #@cust_id"
        puts "Customer name #@cust_name"
        puts "Customer address #@cust_addr"
     end
  end

  # Create Objects
  cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
  cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

  # Call Methods
  cust1.display_details()
  cust2.display_details()
  ```

  + **Class Variables**: Class variables are available across different objects. A class variable belongs to the class and is a characteristic of a class. They are preceded by the sign @@ and are followed by the variable name.
    ```
    #!/usr/bin/ruby

    class Customer
       @@no_of_customers = 0
       def initialize(id, name, addr)
          @cust_id = id
          @cust_name = name
          @cust_addr = addr
       end
       def display_details()
          puts "Customer id #@cust_id"
          puts "Customer name #@cust_name"
          puts "Customer address #@cust_addr"
       end
       def total_no_of_customers()
          @@no_of_customers += 1
          puts "Total number of customers: #@@no_of_customers"
       end
    end

    # Create Objects
    cust1 = Customer.new("1", "John", "Wisdom Apartments, Ludhiya")
    cust2 = Customer.new("2", "Poul", "New Empire road, Khandala")

    # Call Methods
    cust1.total_no_of_customers()
    cust2.total_no_of_customers()
    ```
  + **Local Variables**: The variables that are defined in a method. Local variables are not available outside the method. Local variables begin with a lowercase letter or _.
  + **Constant Variable**: the variable that are defined only once. Cant change value. Constants begin with an uppercase letter
  
  ```
  #!/usr/bin/ruby

  class Demo
     VAR1 = 100 # Constant Variable
     VAR2 = 200 # Constant Variable
     Var3 = 123 # Constant Variable
     def test
        puts "Value of first Constant is #{VAR1}"
        puts "Value of second Constant is #{VAR2}"
        var1 = 12 #local variable
        puts "Value of first local variable is #{var1}"
        #Var3 = 3
        puts "Value of second Constant is #{Var3}"

     end
  end

  # Create Objects
  obj = Demo.new() 
  obj.test
  ```
 
## Arrays
```
#!/usr/bin/ruby

ary = [  "fred", 10, 3.14, "This is a string", "last element", ]
ary.each do |i|
   puts i
end
```

## Hashes
```
hsh = colors = { "red" => 0xf00, "green" => 0x0f0, "blue" => 0x00f }
hsh.each do |key, value|
   print key, " is ", value, "\n"
end

colors.each do |key, value|
   print key, " is ", value, "\n"
end

```
  
