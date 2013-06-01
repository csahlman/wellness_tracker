WellnessTracker::Application.routes.draw do
  root to: 'pages#show', id: 'homepage'

  resources :users, only: [ :new, :create ]

  # resources :wellness_trackers, only: [ :new ]

  resources :dashboards, only: [ :index ]

  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
end
