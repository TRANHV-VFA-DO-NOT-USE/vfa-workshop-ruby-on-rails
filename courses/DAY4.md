
### Create database
- install mysql2 gem by add 2 lines to Gemfile.

```
gem 'mysql2', '>= 0.3.18', '< 0.5'
```

- Run to apply gem
```
bundle install
```

- Update database.yml
```
development:
   adapter: mysql2
   database: demo_rails_development
   username: root
   password: ""
   host: localhost
test:
   adapter: mysql2
   database: demo_rails_test
   username: root
   password: ""
   host: localhost
```

- Create database:

```
rake db:create
```



- Create model, migration:

```
rails g model factory name
rails g model employee first_name last_name birthday factory:references

rake db:migrate
```

- Create controller:
```
rails g controller Home
rails g controller Factory
rails g controller Employee new create update edit destroy index show
```

- Route:
+ Show route:
```
rake routes
```
+ routes.rb
```
  root :to => 'home#index'
  get 'home', :controller => 'home', :action => 'index'
  resources :factories
```

- Create index.html.erb into app/views/home/index.html.erb with content
```
<h1>Home#index</h1>
<p>Find me in app/views/home/index.html.erb</p>
<p><%= link_to "Go to Factories", {:controller => 'factories', :action => 'index' }%></p>
<p><%= link_to "Go to Employees", employee_index_path%></p>
```

