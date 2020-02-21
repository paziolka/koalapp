---
layout: page
title: First endpoint
sort: 3
---

## MVC - the C and V parts: CONTROLLER...

1) stop the server

2) Let's generate controller with generator:

`rails generate controller about_us index`

You'lle see something like:
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

The most important for us are now (edit these files and checkout what's inside):
* app/controllers/about_us_controller.rb
* get 'about_us/index' in config/routes.rb
* app/views/about_us/index.html.erb
Later you don't have to use rails generator since it tends to create to much, as you can see from above.

3) Run `rails s` and see your page!

4) Change index method in controller to:

```
def index
  render json: { key: 'value' }
end
```
And see what happens.

5) Add `root 'about_us#index'` in the config/routes.rb file, so "Welcome aboard" is not default page anymore.

6) Run `rake routes`

## MVC - the C and V parts: ...AND VIEW

1) Install rabl and oj from instruction in [here](https://github.com/nesquena/rabl).

2) Change `app/views/about_us/index.html.erb` => `app/views/about_us/index.rabl`

Add there `node(:key) { 'value' }` and see the result under `http://localhost:3000/`

