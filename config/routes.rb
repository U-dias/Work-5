Rails.application.routes.draw do
  #get 'events/index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'events#index'
  resources :events  do
    collection do
      post :confirm
    end
  end
  
  # resources :events
  # edit 'edit/events' => 'events#edit'
  
  resources :events
  delete 'events/destroy' => 'events#destroy'
end
