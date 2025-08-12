class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def index
    render 'application/index'
  end

  def hello
    render 'application/hello'
  end

  def goodbye
    render 'application/goodbye'
  end

  def date
    render 'application/date'
  end
end
