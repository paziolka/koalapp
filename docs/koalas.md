---
layout: page
title: Koalas 🐨
sort: 1
---

Accoring to [livescience](https://www.livescience.com/27401-koalas-facts.html):

> They live in eucalyptus trees and spend most of their time wedged between forks in the tree's branches. Koalas eat in the trees, sleep in trees and hang out in trees. The only time they leave the trees is to walk to another tree with a better food supply. Koalas do move around in their chosen tree.

So we're going to have koalas in our app. And they belong to a tree.

> Here below you have an example that mermaid.js (graph generator) is not supported by github pages 😭


```mermaid
graph LR
A(mom koala) --> B{tree}
C(dad koala) --> B{tree}
D(baby koala) --> B{tree}
```

But as you can see we have a koala family in here, so we also have **another type of relation** -  koalas may belong to other koalas:

```mermaid
graph LR
B(baby koala) --> A(mom koala)
B(baby koala) --> C(dad koala)
```
