Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :events do
    get 'invitation'
  end
  resources :students do
    resources :student_infos
  end
  resources :rules
  resources :periods
  root to: 'events#index'
  
end
