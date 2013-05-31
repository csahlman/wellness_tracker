WellnessTracker::Application.routes.draw do
  root to: 'high_voltage/pages#show', id: 'homepage'

  resources :users, only: [ :new, :create ]

  resources :wellness_trackers, only: [ :new ]

  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
end
