WellnessTracker::Application.routes.draw do
  root to: 'pages#show', id: 'homepage'

  resources :users, only: [ :new, :create ]

  resources :trackers, only: [ :new, :create, :show ]
  
  resources :dashboards, only: [ :index ]

  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
end
