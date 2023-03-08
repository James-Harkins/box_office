Rails.application.routes.draw do
  get '/', to: 'bands#index'

  resources :bands do 
    get '/shows', to: 'shows#index'
    get '/shows/new', to: 'shows#new'
    post '/shows/create', to: 'shows#create'
    get '/shows/:show_id', to: 'shows#show'
    get '/shows/:show_id/tickets/new', to: 'tickets#new'
    post '/shows/:show_id/tickets/create', to: 'tickets#create'
  end
end
