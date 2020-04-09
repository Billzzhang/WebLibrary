Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'library#home', as: 'home'
  post 'search' => 'library#search', as: 'search'
  get 'search', to: redirect('/')
  get 'books' => 'library#index'
    
end
