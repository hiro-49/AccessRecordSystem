Rails.application.routes.draw do
  get 'records/record'
  get 'members/new'
    root 'static_pages#home'
    get '/help', to: 'static_pages#help'
    get '/members', to: 'members#index'
    get '/add', to: 'members#new'
    post '/add', to: 'members#create'
    get '/record', to: 'records#record'
    post '/access', to: 'records#access'
end
