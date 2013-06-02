WellnessTracker::Application.routes.draw do
  root to: 'pages#show', id: 'homepage'

  resources :users, only: [ :new, :create ]

  resources :trackers, only: [ :new, :create, :show ] do 
    resources :days, only: [ :create, :new ]
  end

  resources :dashboards, only: [ :index ]

  controller :sessions do 
    get 'login' => :new
    post 'login' => :create
    delete 'logout' => :destroy
  end
end
