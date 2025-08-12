Rails.application.routes.draw do
  get '/hello', to: 'application#hello'
  get '/goodbye', to: 'application#goodbye'
  get '/date', to: 'application#date'
  root 'application#index'
end
