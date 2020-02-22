---
layout: page
title: Now let's add some api
sort: 5
---

## Create Api::V1::TreesController

## Create namespaced routes in `config/routes.rb`

```ruby
namespace :api do
  namespace :v1 do
    resources :trees
  end
end
```

Check your new routes with `rake routes`

## Create "views" - serializers for the routes and controller actions

1) In `app/views` create subfolders `/api/v1` and add there all `.rabl` files you need

* You need views only for GET methods
* To check the rabl syntax check [the website gem](https://github.com/nesquena/rabl#usage)
