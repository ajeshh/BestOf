Rails.application.routes.draw do
  
  root to: 'sites#index'

  get 'search', to: 'seach#show'

  get 'bests/show'

  get 'bests/new'

  get 'bests/edit'

  get 'bests/destroy'

  get 'sessions/new'

  get 'checkins/show'

  get 'checkins/new'

  get 'sites/show'

  get 'users/show'

  get 'users/new'

  get 'users/edit'

  get 'users/destroy'

  match 'auth/:provider/callback', to: 'sessions#create', via: [:get, :post]
  match 'auth/failure', to: redirect('/'), via: [:get, :post]
  match 'signout', to: 'sessions#destroy', as: 'signout', via: [:get, :post]
end