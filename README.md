# A TOY APP
### 2.1 Create Project and Run server
**Step 1: Check version**
```git
rvm -v 
ruby -v
rails -v
node -v
```

**Step 2: Create project and run  server**
```bash
# create project
rails new toy_app

# install rubygems 
bundle install

# run server project
rails s
```
**Step 3: Test HelloWorld Controller**
- Fast 
```bash
rails generate controller HelloWorld index
```
app/controllers/hello_world_controller.rb
```ruby
class HelloWorldController < ApplicationController
  def index
  end<h1>Hello, World!</h1>

end
```
app/views/hello_world/index.html.erb

```html
<h1>Hello, World!</h1>
```
config/routes.rb
```ruby
Rails.application.routes.draw do
  # Define root route
  root 'hello_world#index'
end
```
**Step 4: Implement Model**

Understand about Model Inheritance
-
![](https://i.imgur.com/TijChuM.png)
![](https://i.imgur.com/N5SqYeS.png


```bash
rails generate scaffold User name:string email:string
rails generate scaffold Micropost content:text user_id:integer
rails db:migrate
```
**Step 5: One-to-Many relationship & Validation**
```ruby
class  User  <  ApplicationRecord

has_many :microposts

validates FILL_IN, presence:  true  # Replace FILL_IN with the right code.

validates FILL_IN, presence:  true

end
```
```ruby
class  Micropost  <  ApplicationRecord

belongs_to :user

validates :content, length: { maximum:  140 } , presence:  true

end
```

**Step 6: Implement Controller**


UsersController & MicropostsController extends ApplicationController


Declaration method:
 - new 
 - edit
 - create
 - update 
 - destroy

**Step 6: Implement Router**
/config/router.rb
```ruby
Rails.application.routes.draw do
resources :microposts
resources :users
root 'users#index'
end
```

**Step 7:Run server and test endpoint**
```bash
rails s
```

![](https://i.imgur.com/Qmgrzrf.png)


![](https://i.imgur.com/sD0NkR7.png)
