Rspec::Application.routes.draw do
  resources :fruits , :only => [:index, :create]
end
