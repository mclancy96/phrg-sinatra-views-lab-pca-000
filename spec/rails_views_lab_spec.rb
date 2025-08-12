require 'rails_helper'

RSpec.describe ApplicationController, type: :controller do
  describe "GET /hello" do
    it "renders hello.html.erb with Hello World in an h1" do
      get :hello
      expect(response).to have_http_status(200)
      expect(response.body).to include('<h1>Hello World</h1>')
    end
  end

  describe "GET /goodbye" do
    it "renders goodbye.html.erb with ERB variable containing Joe" do
      get :goodbye
      expect(response).to have_http_status(200)
      expect(response.body).to include('<h1>Goodbye Joe</h1>')
    end
  end

  describe "GET /date" do
    it "renders date.html.erb with Today in an h1" do
      get :date
      expect(response).to have_http_status(200)
      expect(response.body).to include('<h1>Today</h1>')
    end

    it "displays today's date in proper format using ERB" do
      get :date
      expect(response).to have_http_status(200)
      # Check that it includes "The date is" and has a day name format
      expect(response.body).to include('The date is')
      expect(response.body).to match(/\w+day, \w+ \d{1,2}, \d{4}/)
    end
  end

  describe "GET /" do
    it "renders index.html.erb" do
      get :index
      expect(response).to have_http_status(200)
      expect(response.body).to include('Rails Views Lab')
    end
  end
end

RSpec.describe "Routes", type: :routing do
  it "routes GET /hello to application#hello" do
    expect(get: "/hello").to route_to(controller: "application", action: "hello")
  end

  it "routes GET /goodbye to application#goodbye" do
    expect(get: "/goodbye").to route_to(controller: "application", action: "goodbye")
  end

  it "routes GET /date to application#date" do
    expect(get: "/date").to route_to(controller: "application", action: "date")
  end

  it "routes GET / to application#index" do
    expect(get: "/").to route_to(controller: "application", action: "index")
  end
end

RSpec.describe "Views", type: :view do
  describe "application/hello.html.erb" do
    it "contains Hello World in an h1 tag" do
      render template: "application/hello"
      expect(rendered).to include('<h1>Hello World</h1>')
    end
  end

  describe "application/goodbye.html.erb" do
    it "uses ERB to display Goodbye Joe in an h1 tag" do
      render template: "application/goodbye"
      expect(rendered).to include('<h1>Goodbye Joe</h1>')
    end
  end

  describe "application/date.html.erb" do
    it "contains Today in an h1 tag" do
      render template: "application/date"
      expect(rendered).to include('<h1>Today</h1>')
    end

    it "uses ERB to display the current date" do
      render template: "application/date"
      expect(rendered).to include('The date is')
      expect(rendered).to match(/\w+day, \w+ \d{1,2}, \d{4}/)
    end
  end
end
