Rails.application.routes.draw do

 root 'homes#top'
 get '/books'=>'books#index'
 
 resources :books

end
