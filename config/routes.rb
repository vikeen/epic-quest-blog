Rails.application.routes.draw do
  get 'contact', to: 'contact#index'
  post 'contact/send', to: 'contact#send_email'
  get 'resume', to: 'resume#index'
  get 'portfolio', to: 'portfolio#index'

  resources :articles do
    resources :comments
  end

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
