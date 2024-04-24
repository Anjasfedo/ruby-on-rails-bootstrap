# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

-   Ruby version

-   System dependencies

-   Configuration

-   Database creation

-   Database initialization

-   How to run the test suite

-   Services (job queues, cache servers, search engines, etc.)

-   Deployment instructions

-   ...

on Gemfile

```
gem 'bootstrap', '~> 5.1'
gem 'jquery-rails', '~> 4.4'
gem "sassc-rails"
gem 'prettier'
```

app/assets/stylesheets/application.scss
```
@import "bootstrap";
```

app/javascripts/application.js
```
//= require jquery3
//= require popper
//= require bootstrap
```

app/views/layouts/application.html.erb
```
    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
    <%= javascript_importmap_tags %>
```
