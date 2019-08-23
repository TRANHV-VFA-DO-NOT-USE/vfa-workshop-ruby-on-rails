# #1: Introduction + Setup

## #[RUBY Programming Language](https://www.ruby-lang.org/en/)
<img src="http://vskills.in/certification/blog/wp-content/uploads/2014/12/ruby-a-programmers-best-friend-indeed.png" width="100" height="100"/>

- It was designed and developed in the mid-1990s by Yukihiro "Matz" Matsumoto in Japan.
- Ruby is an open-source and is freely available on the Web, but it is subject to a license.
- Ruby is a general-purpose, interpreted programming language.
- Ruby is a true object-oriented programming language.
- Ruby can easily be connected to DB2, MySQL, Oracle, and Sybase.

ex:

```javascript
# The Hello Class
class Hello
   def initialize( name )
      @name = name.capitalize
   end
   def something
      puts "Hello #{@name}!"
   end
end

h = Hello.new("World") # Create a new object
h.something # Output "Hello World!"
```

## #[RAILS](https://guides.rubyonrails.org/index.html)
<img src="https://rubyonrails.org/images/rails-logo.svg" width="150" height="150"/>

- Written in Ruby by David Heinemeier Hansson. Initial release at 13 December 2005; 13 years ago. [Github](https://github.com/rails/rails)
- An open source Ruby framework for developing database-backed web applications.
- Configure your code with Database Schema.
- You could develop a web application faster with Rails.
- Includes everything needed to create a database-driven web application, using the Model-View-Controller pattern.
- Rails creates simple automated tests you can then extend.
- Rails gives you three default environments: development, testing, and production.

## Setup
Step 1: Check Ruby Version
- RubyGem - Ruby package manager, should be installed on your machine if you previously have installed Ruby
```
ruby -v //check ruby version
gem --version //check gem version
```
Step 2: Install Ruby
 - rbenv is tool manage ruby versions.
```
brew install rbenv // install rbenv
rbenv install -l //list of ruby version can install
rbenv install -v 2.6.3 // install ruby version 2.6.3
rbenv install -v 2.4.0 // install ruby version 2.4.0
rbenv versions  // list all ruby versions installed
rbenv global 2.6.3 // set ruby version for this computer, rbenv local 2.2.3 --set ruby version for current path.
ruby -v //check ruby version
//ruby 2.6.3 (2015-08-18 revivion 51636)

echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >>~/.bash_profile
echo eval "$(rbenv init -)" >>~/.bash_profile

```
 - Interactive Ruby (IRb) provides a shell for experimentation. Within the IRb shell, you can immediately view expression results, line by line.
```
irb
1 + 1 //2
puts "Hello World" // print "Hello World"
```

 - run ruby file. Create file ``` hello.rb ``` with content:
 ```
  a = 15*10;
  puts a
  puts "Hello, Ruby!"
 ```
 run: ``` ruby hello.rb ```
 output:
 ```
  150
  Hello, Ruby!
 ```
 Congratulation! You can run Ruby.

Step 3: Install Rails
- Bundler gem helps to manage your application dependencies.
```
gem install bundler // install gem bundler
gem install rails -v 6.0.0 // install gem rails version 6.0.0
rbenv rehash // make Rails executable available
rails -v // check version rails
//Rails 4.2.4
```
- Ruby on Rails framework requires JavaScript Runtime Environment (Node.js) to manage the features of Rails.
```
brew install node
brew install yarn
```

Step 4: Create demo application
```
rails new demo -d mysql
cd demo
ls // list items in app to find structure rails app
```

If error with mysql
```
brew install mysql
gem install mysql2 -v '0.5.2' --source 'https://rubygems.org/' -- --with-cppflags=-I/usr/local/opt/openssl/include --with-ldflags=-L/usr/local/opt/openssl/lib
```

Step 5: Run app
```
rails server
```

If error with webpacker and rerun app
```
rails webpacker:install
```


Access: http://localhost:3000/ to find application.

 Congratulation! You can run Rails application.
