Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
get '/notes', to:"notes#index"
get '/new', to:"notes#create"
# path        # Where to go 
end
