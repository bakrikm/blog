Rails.application.routes.draw do
  get 'profile/index'

    get 'about_me', to: 'profile#about_me'
    get 'study_and_work', to: 'profile#study_and_work'
    get 'my_fevorite_hobbies', to: 'profile#my_fevorite_hobbies'
    get 'call_me', to: 'profile#call_me'
    root 'profile#index'

  resources :posts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'posts/index'

  root'posts#index'
end
