Rails.application.routes.draw do
  get 'login' => 'users#login_form'

  post 'time' =>  'users#time'
  post 'login' => 'users#login'
  post 'logout' => 'users#logout'
  post 'create' => 'home#index'

  get 'users/index' => 'users#index'
  get 'users/:id/show' => 'users#show'
  get 'users/second' => 'users#second'
  get 'quiz/top' => "quiz#top"

  get 'home/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
