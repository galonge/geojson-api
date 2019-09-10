Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      get 'areas/fetch', to: 'areas#index'
      get 'areas/search', to: 'areas#search'
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
