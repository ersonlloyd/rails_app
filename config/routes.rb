Rails.application.routes.draw do
  get '/guest-reservations/:id', to: 'guests#show', as: 'guest'
  post 'guests', to: 'guests#create'
end
