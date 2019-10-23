Rails.application.routes.draw do
  get 'home', to: 'welcome#index'
  get 'contact', to: 'contact#index'
  get 'resume', to: 'resume#index'
  get 'portfolio', to: 'portfolio#index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
