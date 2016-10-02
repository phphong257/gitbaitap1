Rails.application.routes.draw do
  
resources :blogg
resources :hello
get '/about'    => 'blogg/blogg#show', id: 'about'
  get '/contact'  => 'blogg/blogg#show', id: 'contact'
  get '/privacy'  => 'blogg/blogg#show', id: 'privacy'
  get '/terms'    => 'blogg/blogg#show', id: 'terms'

  get '/home', to: redirect('/')

  root :to => 'blogg/blogg#show', id: 'home'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
