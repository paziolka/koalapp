---
layout: page
title: First endpoint
sort: 3
---

## MVC - the C and V parts: CONTROLLER…

1) Stop the server! `ctrl+C`

2) Let’s generate controller with generator:

`rails generate controller about_us index`

You'll see something like:

```bash
      create  app/controllers/about_us_controller.rb
       route  get 'about_us/index'
      invoke  erb
      create    app/views/about_us
      create    app/views/about_us/index.html.erb
      invoke  helper
      create    app/helpers/about_us_helper.rb
      invoke  assets
      invoke    js
      create      app/assets/javascripts/about_us.js
      invoke    css
      create      app/assets/stylesheets/about_us.css

```

The most important for us are now (edit these files and check out what’s inside):

- **app/controllers/about_us_controller.rb**

```ruby
class AboutUsController < ApplicationController
  def index
  end
end

```

- get ‘about_us/index’ in  **config/routes.rb**

```ruby
Rails.application.routes.draw do
  get 'about_us/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end

```

- and  **app/views/about_us/index.html.erb**

Later you don’t have to use rails generator since it tends to create too much, as you can see from above.

3) Run  `rails s`  and see your page!

- To see the URL of a new controller, type in  `rake routes`  in your terminal

```bash
▶ rake routes
        Prefix Verb   URI Pattern                 Controller#Action
about_us_index GET    /about_us/index(.:format)   about_us#index
```


4) Change the index method in the controller to:

```ruby
def index
  render json: { key: 'value' }
end

```

And see what happens in your app (if it’s  `Routing Error`  in your browser, it also shows you the correct route to go to;  **remember, no .html at the end of the route**).

5) Add  `root 'about_us#index'`  in the  `config/routes.rb`  file, so “Welcome aboard” is not default page anymore. Now  `localhost:3000`  also shows you  `about_us`  page by default

6) Run  `rake routes`  in your terminal again, to see the routes:

```bash
Prefix Verb   URI Pattern               Controller#Action
          root GET    /                         about_us#index
about_us_index GET    /about_us/index(.:format) about_us#index

```

## MVC - the C and V parts: …AND VIEW

1) Remove  `render json: { key: 'value' }`  line from your index action in AboutUsController

2) Install rabl and oj from instruction in  [gem documentation](https://github.com/nesquena/rabl#installation).

OK, do not  `gem install rabl`, cause the app won’t see it. Add

```
gem 'rabl'
gem 'oj'

```

to your Gemfile and run  `bundle install`  and please do so, when the server is not working (`ctrl+C`). Then run your server again.

2) Change  `app/views/about_us/index.html.erb`  =>  `app/views/about_us/index.rabl`  Add there  `node(:key) { 'value' }`  and see the result under  `http://localhost:3000/`.

## Final remarks

- you can render your json from a method in a controller (`def index ... end`)

- when you leave it empty (for now) and you create a "view" layer for it, it's going to be rendered automatically by rails - a method `index` in a controller `app/controllers/trees_controller` searches for a file with the same name (`index.rabl`) in a `app/views/trees` folder
