# Cookbook Companion
The Cookbook Companion helps you figure out what recipes you can make with what you have on hand. Select the ingredients you have and see which recipes you can make!

## Dependencies
* Ruby 3.0.2
* Rails 7.0.4

## Development Setup
Clone this repository. From the project root run:

* `bundle install` to install gems.
* `bin/rails db:setup RAILS_ENV=development` to setup and seed the database.
* `bin/dev` to run the application.

Finally, navigate to `http://localhost:3000/` in a web browser.

## Test
From the project root run:
* `bin/rails test` to run automated tests.
* `rubocop` to run the static code analyzer.
