Rails.application.routes.draw do

  root 'welcome#index'

  resources :brunch_lists

end
