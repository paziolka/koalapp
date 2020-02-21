---
layout: page
title: Rails installation
---

In order to create our koalapp let's follow [Michał Młoźniak](https://github.com/ronin) [way of doing]( https://twitter.com/roninek/status/1219196994964639744) it to prevent too many things get installed and you being lost just at the beginning of your journey:

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

...and if you want to skip even MOAH [here's the link](https://gist.github.com/eliotsykes/ace0222174804372b51a) to available options.
