Rails.application.routes.draw do
  get "/", to: "home#index"
  get "/ver_traducao/:id", to: 'home#ver_traducao'
  get "/saiba-mais", to: 'home#saiba_mais'
  resources :cards
end
