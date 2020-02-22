---
layout: page
title: And now let's add some proper api
sort: 6
---

Previous methods to add API to your application were based on the approach, that you can put anything to your JSON response and format it however you want. But this can be painful, expecially when there's too many developers working on the same endpoints. You can try to give your json a structure, based on its resource. To read more about it check [JSON API website](https://jsonapi.org/)

**TL'DR**
> If you’ve ever argued with your team about the way your JSON responses should be formatted, JSON:API can be your anti-bikeshedding tool.

## Create Api::V2::TreesController with show method only

You'll have to match the name of the controller with directories, means it has to be located in `app/controllers/api/v2`

```ruby
class Api::V2::TreesController < ApplicationController
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

  namespace :v2 do
    resources :trees, only: [:show]
  end
end
```

Check your new routes with `rake routes`

## Create "view" - a serializer for the show action in the controller

1) Go to the [json_api website](https://github.com/Netflix/fast_jsonapi) and see how to install the gem

Or just add `gem 'fast_jsonapi'` to your Gemfile (and run `bundle install`)

2) Use `rails g serializer Tree` to generate the "view" - a serializer

* To check the json_api syntax (and fill in the file with proper methods) check [the json_api website](https://github.com/Netflix/fast_jsonapi#usage)

3) Use the serializer in your controller:

```ruby
class Api::V2::TreesController < ApplicationController
  def show
    @tree = Tree.find(params[:id])
    render json: TreeSerializer.new(@tree).serializable_hash
  end
end
```
