MyNumbers::Application.routes.draw do
  resources :workouts

  root to: redirect('/workouts')
end
