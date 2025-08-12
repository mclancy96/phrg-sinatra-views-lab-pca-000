require 'spec_helper'

RSpec.describe "Rails Views Lab" do
  describe "View Templates" do
    let(:views_dir) { File.join(File.dirname(__FILE__), '..', 'app', 'views', 'application') }

    describe "hello.html.erb" do
      let(:hello_file) { File.join(views_dir, 'hello.html.erb') }

      it "exists" do
        expect(File.exist?(hello_file)).to be true
      end

      it "contains Hello World in an h1 tag" do
        content = File.read(hello_file)
        expect(content).to include('<h1>Hello World</h1>')
      end
    end

    describe "goodbye.html.erb" do
      let(:goodbye_file) { File.join(views_dir, 'goodbye.html.erb') }

      it "exists" do
        expect(File.exist?(goodbye_file)).to be true
      end

      it "uses ERB to display Goodbye Joe in an h1 tag" do
        content = File.read(goodbye_file)
        expect(content).to include('name = "Joe"')
        expect(content).to include('<h1>Goodbye <%= name %></h1>')
      end
    end

    describe "date.html.erb" do
      let(:date_file) { File.join(views_dir, 'date.html.erb') }

      it "exists" do
        expect(File.exist?(date_file)).to be true
      end

      it "contains Today in an h1 tag" do
        content = File.read(date_file)
        expect(content).to include('<h1>Today</h1>')
      end

      it "uses ERB to display the current date" do
        content = File.read(date_file)
        expect(content).to include('DateTime.now.strftime')
        expect(content).to include('The date is')
      end
    end

    describe "index.html.erb" do
      let(:index_file) { File.join(views_dir, 'index.html.erb') }

      it "exists" do
        expect(File.exist?(index_file)).to be true
      end

      it "contains Rails Views Lab title" do
        content = File.read(index_file)
        expect(content).to include('Rails Views Lab')
      end
    end
  end

  describe "ApplicationController" do
    let(:controller_file) { File.join(File.dirname(__FILE__), '..', 'app', 'controllers', 'application_controller.rb') }

    it "exists" do
      expect(File.exist?(controller_file)).to be true
    end

    it "has the required action methods" do
      content = File.read(controller_file)
      expect(content).to include('def hello')
      expect(content).to include('def goodbye')
      expect(content).to include('def date')
      expect(content).to include('def index')
    end
  end

  describe "Routes" do
    let(:routes_file) { File.join(File.dirname(__FILE__), '..', 'config', 'routes.rb') }

    it "exists" do
      expect(File.exist?(routes_file)).to be true
    end

    it "has the required routes" do
      content = File.read(routes_file)
      expect(content).to include("get '/hello'")
      expect(content).to include("get '/goodbye'")
      expect(content).to include("get '/date'")
      expect(content).to include("root 'application#index'")
    end
  end
end
