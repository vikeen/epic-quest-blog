Rails.application.routes.draw do
  get 'my_playbook/index'
  get 'work_with_me/index'
  get 'about/index'
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
  get 'contact', to: 'contact#index'
  post 'contact/send', to: 'contact#send_email'
  get 'resume', to: 'resume#index'
  get 'my-work', to: 'portfolio#index'

  resources :articles do
    resources :comments, only: [:create, :destroy]
  end

  # development only routes
  if Rails.env.development?
    get 'icons', to: 'icons#index'
  end
  

  root 'welcome#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
