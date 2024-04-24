1. **Add Gems to Gemfile**: Open your `Gemfile` and add the following lines to include the required gems:
```
gem 'bootstrap', '~> 5.1'
gem 'jquery-rails', '~> 4.4'
gem "sassc-rails"
gem 'prettier'
```

2. **Install Gems**: Run the following command in your terminal to install the gems specified in your `Gemfile`:
```
bundle install
```

3. **Import Bootstrap in application.scss**: Open the `app/assets/stylesheets/application.scss` file and add the following line to import Bootstrap:
```
@import "bootstrap";
```

4. **Add JavaScript Dependencies in application.js**: Open the `app/javascripts/application.js` file and add the following lines to include jQuery, Popper.js, and Bootstrap:
```
//= require jquery3
//= require popper
//= require bootstrap
```

5. **Include Stylesheet and JavaScript in application.html.erb**: In the head section of your `app/views/layouts/application.html.erb` file, add the following lines to include the stylesheet and JavaScript files:
on head tags of app/views/layouts/application.html.erb
```
    <%= stylesheet_link_tag "application", "data-turbo-track": "reload" %>
    <%= javascript_importmap_tags %>
```

**Note:**
For the Prettier Formatter, make sure to install Prettier for Ruby from [https://github.com/prettier/plugin-ruby](https://github.com/prettier/plugin-ruby).
