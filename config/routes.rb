Rails.application.routes.draw do
  get '/new' => 'pages#new'
  post '/c' => 'pages#create'
  get '/call_all' => 'pages#call_all'
  get '/one_post/:id' => 'pages#show_one'
  post '/delete/:id' => 'posts#delete'
  get '/edit/:id'=> 'posts#edit'
  post '/update/:id' => 'posts#update'
  post '/:id/comment/create' => 'comments#create'
  root 'pages#new'
end
