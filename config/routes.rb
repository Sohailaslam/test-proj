Rails.application.routes.draw do
  resources :rand_apps do
    collection do
      delete :destroy_all
    end

  end
  
  # resources :posts do
  #   member do
  #     get 'comments'
  #   end
  #   collection do
  #     post 'bulk_upload'
  #   end
  # end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
