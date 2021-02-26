Rails.application.routes.draw do
  resources :signups
  
  get '/campers', to: "campers#index", as: "campers"
  get '/campers/new', to: "campers#new", as: "new_camper"
  post '/campers', to: "campers#create"
  get '/campers/:id', to: "campers#show", as: "camper"
  get '/campers/:id/edit', to: "campers#edit", as: "edit_camper"
  


  get '/activities', to: "activities#index", as: "activities"
  get '/activities/new', to: "activities#new", as: "new_activity"
  post '/activities', to: "activities#create"
  get '/activities/:id', to: "activities#show", as: "activity"
  get '/activities/:id/edit', to: "activities#edit", as: "edit_activity"

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
