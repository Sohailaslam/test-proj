Rails.application.routes.draw do
  resources :rand_apps do
    collection do
      delete :destroy_all
    end

  end
  root 'rand_apps#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
