
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
rails g model employee first_name last_name factory:references

rake db:migrate
```

- Create controller:
```
rails g controller Home
rails g controller Factory
rails g controller Employee new edit destroy index show
```

update model: factory.rb
```
class Factory < ApplicationRecord
  has_many :employees, dependent: :destroy
  validates_presence_of :name
end
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

- Update file home_controller.rb
```
class HomeController < ApplicationController
  def index
  end
end
```

- Create index.html.erb into app/views/home/index.html.erb with content
```
<h1>Home#index</h1>
<p>Find me in app/views/home/index.html.erb</p>
<p><%= link_to "Go to Factories", {:controller => 'factories', :action => 'index' }%></p>
<p><%= link_to "Go to Employees", employee_index_path%></p>
```

- Access link http://localhost:3000/ --> home page

- Update file factory_controller.rb
```
class FactoryController < ApplicationController
  def new
    @factory = Factory.new
  end

  def create
    @factory = Factory.new(factory_param)
	
    if @factory.save
       redirect_to :action => 'index'
    else
       render :action => 'new'
    end
  end

  def update
    @factory = Factory.find(params[:id])
	
   if @factory.update_attributes(factory_param)
      redirect_to :action => 'show', :id => @factory
   else
      render :action => 'edit'
   end
  end

  def factory_param
    params.require(:factory).permit(:name)
  end

  def edit
    @factory = Factory.find(params[:id])
  end

  def destroy
    Factory.find(params[:id]).destroy
    redirect_to :action => 'index'
  end

  def index
    @factories = Factory.all
  end

  def show
    @factory = Factory.find(params[:id])
  end
end
```

- Create index.html.erb in views>factory

```
<% if @factories.blank? %>
<p>There are not any factories currently in the system.</p>
<% else %>
<p>These are the current factories in our system</p>

<% end %>
<p><%= link_to "Add new factory", {:action => 'new' }%></p>

<table id="table">
<tr id="header">
   <th>id</th>
   <th>name</th>
</tr>
<% @factories.each do |c| %>
   <tr id="row">
      <td><%= c.id%></td>
      <td><%= c.name%></td>
      <td><%= link_to "Show", {:action => 'show', :id => c.id} -%></td>
      <td><%= link_to "Edit", {:action => 'edit', :id => c.id} -%></td>
      <td><%= link_to 'Delete', {:action => "destroy", :id => c.id}, :method => 'delete', data: { confirm: 'Are you sure?' } %></td>
   </tr>
   <% end %>
</table>
```

- Create new.html.erb in views>factory
```
<h1>Add new factory</h1>

<ul>
  <% @factory.errors.each_with_index do |msg, i| %>
  <li><%= msg[0].to_s + " " + msg[1].to_s %></li>
  <% end %>
</ul>

<%= form_tag :action => 'create' do %>
<p><label for = "factory_name">Name</label>:
<%= text_field 'factory', 'name' %></p>

<%= submit_tag "Create" %>

<% end -%>
<%= link_to 'Back', {:action => 'index'} %>
```

- Create edit.html.erb in views>factory
```
<h1>Edit Factory Detail</h1>

<%= form_for @factory, :url =>{:action => "update", :id =>@factory} do |f| %>

<p>Name: <%= f.text_field 'name' %></p>
<%= f.submit "Save changes" %>
<% end %>

<%= link_to 'Back', {:action => 'index' } %>
```
- Create show.html.erb in views>factory
```
<h1><%= @factory.name %></h1>
<p>
   <strong>Name: </strong> <%= @factory.name %><br />
   <strong>Created Date:</strong> <%= @factory.created_at %><br />
</p>
<hr />


<%= link_to 'Back', {:action => 'index'} %>
```

- Now you can test flow for Factory.





