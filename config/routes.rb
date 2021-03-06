Rails.application.routes.draw do
  get 'locations', to: 'locations#index'

  get 'candidates', to: 'candidates#index'

  post 'answer', to: 'answers#create'

  get 'questions', to: 'questions#index'

  post 'users/create'

  get 'helloworld', to: 'helloworld#show'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
