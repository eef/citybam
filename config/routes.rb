Citybam::Application.routes.draw do

  resources :home, :only => [:index]

  resources :cities do
    get :search, :on => :collection
  end

  root :to => 'home#index'

end
