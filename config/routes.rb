Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :cards
  resources :decks

  post 'decks/add_card'
  get 'decks/image_show/:id', to: 'decks#image_show', as: :image_show
  get 'decks/text_show/:id', to: 'decks#text_show', as: :text_show
  get 'decks/combined_show/:id', to: 'decks#combined_show', as: :combined_show

  root 'cards#index'
end
