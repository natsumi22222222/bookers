Rails.application.routes.draw do

 root 'homes#top'
 get '/books'=>'books#index'
 # post 'books'=>'books#create'
 resources :books

end
