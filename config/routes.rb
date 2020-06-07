Rails.application.routes.draw do
  get "/home/about" => "home#about"
  get "search" => "searches#search"
  root :to => 'home#top'
  devise_for :users
  resources :books do
    resource :favorites, only:[:create, :destroy]
    resources :book_comments, only:[:create, :destroy]
  end
  resources :users do
    member do
    get :following, :followers
   end
 end
  resources :relationships, only: [:create, :destroy]

end
