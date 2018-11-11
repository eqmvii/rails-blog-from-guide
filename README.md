# Rails Blog

Built following the tutorial at: https://guides.rubyonrails.org/getting_started.html

Current step: 5.3 Creating articles

# Commands:

Show all existing HTTP routes:

> rails routes

# Generators used:

> bin/rails generate controller Welcome index

> rails generate controller Articles

> rails generate model Article title:string text:text

> rails db:migrate

# On Migrations

In general:

> rails db:migrate

To run in production:

> rails db:migrate RAILS_ENV=production
