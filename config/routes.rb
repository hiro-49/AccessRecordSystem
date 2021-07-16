Rails.application.routes.draw do
  get 'members/new'
    root 'static_pages#home'
    get '/help', to: 'static_pages#help'
    get '/members', to: 'members#new';
end
