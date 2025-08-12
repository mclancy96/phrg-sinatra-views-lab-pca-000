# Rails Views Lab

## Objectives

1. Respond to HTTP Requests with Rails Routes and Controller Actions.
2. Render ERB from a Rails Controller Action.

## Overview

This lesson practices creating ERB views and rendering them from a Rails Controller
Action in response to an HTTP request. Fork and clone this repository and run
`bundle install` to get started!

## Instructions

For each of the following examples, create a `.html.erb` file in the `app/views/application`
directory and ensure the corresponding controller action renders that template. Make sure each
template contains the requested content.

Run `rails server` to start a local server so that you can test your app in your
browser. Once your application is running, assuming port 3000, the Rails
default, you should be able to hit the following local urls:
http://localhost:3000/hello, http://localhost:3000/goodbye, and
http://localhost:3000/date.

You can run `bundle exec rspec` to get the tests passing and see errors.

1. Create a template called `hello.html.erb` in `app/views/application` that contains an `h1` tag
   with the content `Hello World`. This should get rendered via a GET `/hello`
   route by your `ApplicationController` in `app/controllers/application_controller.rb`.

2. Create another template called `goodbye.html.erb` in `app/views/application`. In this view, use
   ERB tags to create a variable `name`. This variable should store the name
   `Joe`. Then, using ERB tags, say "Goodbye Joe" in an `h1` tag. This should get
   rendered via a GET `/goodbye` route by your `ApplicationController`.

3. Create a template called `date.html.erb` in `app/views/application` that gets rendered via GET
   `/date`. It should contain an `h1` with the content `Today`

Using ERB tags, and the [DateTime library](http://ruby-doc.org/stdlib-2.3.1/libdoc/date/rdoc/DateTime.html),
display today's date in a `p` tag. The date should be formatted to look
something like this `The date is Wednesday, November 18, 2015`.

## Does this need an update?

Please open a [GitHub issue](https://github.com/learn-co-curriculum/phrg-sinatra-views-lab/issues) or [pull-request](https://github.com/learn-co-curriculum/phrg-sinatra-views-lab/pulls). Provide a detailed description that explains the issue you have found or the change you are proposing. Then "@" mention your instructor on the issue or pull-request, and send them a link via Connect.

<p data-visibility='hidden'>PHRG Rails Views Lab</p>
