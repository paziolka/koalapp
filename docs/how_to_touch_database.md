---
layout: page
title: How to use db in here?
sort: 4
---

## MVC - the M part: MODEL

1) `rails generate scaffold trees species:string description:string`

You'll see something like:
```bash
      invoke  active_record
      create    db/migrate/20200221232008_create_trees.rb
      create    app/models/tree.rb
      invoke  resource_route
       route    resources :trees
      invoke  scaffold_controller
      create    app/controllers/trees_controller.rb
      invoke    erb
      create      app/views/trees
      create      app/views/trees/index.html.erb
      create      app/views/trees/edit.html.erb
      create      app/views/trees/show.html.erb
      create      app/views/trees/new.html.erb
      create      app/views/trees/_form.html.erb
      invoke    helper
      create      app/helpers/trees_helper.rb
      invoke    jbuilder
      create      app/views/trees/index.json.jbuilder
      create      app/views/trees/show.json.jbuilder
      create      app/views/trees/_tree.json.jbuilder
      invoke  assets
      invoke    js
      create      app/assets/javascripts/trees.js
      invoke    css
      create      app/assets/stylesheets/trees.css
      invoke  css
      create    app/assets/stylesheets/scaffold.css
```

Checkout controller and routes again (new methods, e.g. [resources](https://guides.rubyonrails.org/routing.html)).

2) Run `rake routes` and check the result of the resource method in `routes.rb`

3) Run migrations

```bash
▶ rake db:migrate
== 20200221232008 CreateTrees: migrating ======================================
-- create_table(:trees)
   -> 0.0379s
== 20200221232008 CreateTrees: migrated (0.0380s) =============================


~/code/koalapp  master ✗                                                                                                                                            1h59m ✖ ⚑ ◒
▶ rails s
```

4) Go to `http://localhost:3000/trees` and plant some new 🎄🌳🌲🌴

Please add at least 5 trees with the form, you'll need them in next step.

5) Stop the server and run `rails c` to try new Active Record commands:

```ruby
Tree.all
Tree.first
Tree.find(2)
```

and so on. More commands you can find [here](https://guides.rubyonrails.org/active_record_querying.html)
