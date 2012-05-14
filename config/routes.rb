Citybam::Application.routes.draw do

  resources :launch_alerts, :only => :create

  resources :home, :only => [:index]

  root :to => 'home#index'

end
