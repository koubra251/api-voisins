Rails.application.routes.draw do
  resources :voisins
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  post '/api/new', to: 'api#nouveauvoisin'
  get '/api/voisins', to: 'api#voisins'
  get '/api/voisinsfavoris', to: 'api#voisinsfavoris'
  get '/api/consulterdetailsvoisins/:id', to:'api#consulterdetailsvoisins'
end
