Rails.application.routes.draw do

 root 'homes#top'
 get '/books'=>'books#index'
 get 'books/:book_id'=>'books#show'
 # post 'books'=>'books#create'
 resources :books

end
