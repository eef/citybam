Citybam::Application.routes.draw do

  resources :launch_alerts, :only => :create

  resources :venues

  resources :home, :only => [:index]

  resources :cities do
    get :search, :on => :collection
  end

  root :to => 'home#index'

end
