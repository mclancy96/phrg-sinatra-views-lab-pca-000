# Rails Views Lab

## Objectives

1. Respond to HTTP Requests with Rails Routes and Controller Actions.
2. Render ERB from a Rails Controller Action.

## Overview

This lesson practices creating ERB views and rendering them from a Rails Controller
Action in response to an HTTP request. Fork and clone this repository and run
`bundle install` to get started!

## Instructions

The Rails application is already set up with the necessary routes and controller actions. The view templates exist in the `app/views/application` directory but need to be completed with the requested content.

Run `rails server` to start a local server so that you can test your app in your
browser. Once your application is running, assuming port 3000, the Rails
default, you should be able to hit the following local urls:
http://localhost:3000/hello, http://localhost:3000/goodbye,
http://localhost:3000/date, and http://localhost:3000/ (root).

You can run `bundle exec rspec` to get the tests passing and see errors.

The following routes are already configured in `config/routes.rb`:

- GET `/hello` → `ApplicationController#hello`
- GET `/goodbye` → `ApplicationController#goodbye`
- GET `/date` → `ApplicationController#date`
- GET `/` (root) → `ApplicationController#index`

Complete the following view templates:

1. Complete the template `hello.html.erb` in `app/views/application` so that it contains an `h1` tag
   with the content `Hello World`. This template is already configured to be rendered via the GET `/hello`
   route by your `ApplicationController` in `app/controllers/application_controller.rb`.

2. Complete the template `goodbye.html.erb` in `app/views/application`. In this view, use
   ERB tags to create a variable `name`. This variable should store the name
   `Joe`. Then, using ERB tags, say "Goodbye Joe" in an `h1` tag. This template is already configured to be
   rendered via the GET `/goodbye` route by your `ApplicationController`.

3. Complete the template `date.html.erb` in `app/views/application` that gets rendered via GET
   `/date`. It should contain an `h1` with the content `Today`

Using ERB tags, and the [DateTime library](http://ruby-doc.org/stdlib-2.3.1/libdoc/date/rdoc/DateTime.html),
display today's date in a `p` tag. The date should be formatted to look
something like this `The date is Wednesday, November 18, 2015`.
