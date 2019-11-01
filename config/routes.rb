Rails.application.routes.draw do
  get 'services', to: 'services#index'
  get 'services/web-development', to: 'services#web_development'
  get 'services/ruby-on-rails', to: 'services#ruby_on_rails'
  get 'services/wordpress', to: 'services#wordpress'
  get 'services/mobile-apps', to: 'services#mobile_apps'
  get 'services/react-native', to: 'services#react_native'
  get 'services/firebase', to: 'services#firebase'

  get 'playbook', to: 'playbook#index'
  get 'playbook/startup', to: 'playbook#startup'
  get 'playbook/test-driven-development', to: 'playbook#test_driven_development'
  get 'playbook/weekly-iterations', to: 'playbook#weekly_iterations'
  get 'playbook/build-measure-learn', to: 'playbook#build_measure_learn'
  get 'playbook/communication', to: 'playbook#communication'
  get 'playbook/lean-project-management', to: 'playbook#lean_project_management'
  get 'playbook/pricing', to: 'playbook#pricing'
  get 'work-with-me/index'
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
