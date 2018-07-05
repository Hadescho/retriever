Rails.application.routes.draw do
  resource :table, only: [:show]

  root to: 'tables#show'
end
