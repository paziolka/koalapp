---
layout: page
title: Now let's add some api
sort: 5
---

## Create Api::V1::TreesController with show method only

You'll have to match the name of the controller with directories, means it has to be located in `app/controllers/api/v1`

```ruby
class Api::V1::TreesController < ApplicationController
  def show
    @tree = Tree.find(params[:id])
  end
end
```

## Create namespaced routes in `config/routes.rb`

```ruby
namespace :api do
  namespace :v1 do
    resources :trees, only: [:show]
  end
end
```

Check your new routes with `rake routes`

## Create "view" - serializer for the show action in the controller

1) In `app/views` create subfolders `/api/v1/trees` and add there all `.rabl` files you need

* To check the rabl syntax (and fill in the file with proper methods) check [the rabl website](https://github.com/nesquena/rabl#usage)
