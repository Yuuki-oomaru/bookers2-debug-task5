Rails.application.routes.draw do
  get "/home/about" => "home#about"
  root :to => 'home#top'
  devise_for :users
  resources :books do
    resource :favorites, only:[:create, :destroy]
    resources :book_comments, only:[:create, :destroy]
  end
  resources :users

end
