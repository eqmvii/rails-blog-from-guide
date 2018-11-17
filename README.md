# Rails Blog

Built following the tutorial at: https://guides.rubyonrails.org/getting_started.html

Current step: 9.1 Basic Authentication

# Commands:

Show all existing HTTP routes:

> rails routes

# Generators used:

> bin/rails generate controller Welcome index

> rails generate controller Articles

> rails generate model Article title:string text:text

> rails db:migrate

Adding a second model:

> rails generate model Comment commenter:string body:text article:references

And then:

> rails db:migrate

> rails generate controller Comments

# On Migrations

In general:

> rails db:migrate

To run in production:

> rails db:migrate RAILS_ENV=production

