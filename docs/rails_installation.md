---
layout: page
title: Rails installation
sort: 2
---

## Install rails gem...

... but skip a lot from it, cause it's useless for now.

In order to create our koalapp let's follow Michal Młoźniak [way of doing]( https://twitter.com/roninek/status/1219196994964639744) it to prevent too many things get installed and you being lost just at the beginning of your journey:

``` ruby
rails new koalapp \
--skip-action-mailbox \
--skip-action-text \
--skip-active-storage \
--skip-sprockets \
--skip-spring \
--skip-listen \
--skip-turbolinks \
--skip-system-test \
--skip-test \
--skip-javascript \
--skip-bootsnap \
--skip-webpack-install \
--database=postgresql
```

...and if you want to learn more about available options, use `rails new --help`. **Important** We're using `--database=postgresql` option, that's why next steps ⬇️

## Configure your database

1) edit /config/database.yml and see that there is an environment variable: `ENV['KOALAPP_DATABASE_PASSWORD']`

2) add your environment variable using `EDITOR=vim rails credentials:edit` command (or `EDITOR=anything_else` for another preffered editor)

* if you want to check if you have the editor installed, just type in its command to terminal, e.g. `nano`, `subl` etc.
* just add KOALAPP_DATABASE_PASSWORD: xxx at the end of the file

3) `rake db:create`

## And run server 😊

4) `rails s` and your website is under `http://localhost:3000/`
