Rails.application.routes.draw do
  get '/', to: 'bands#index'

  resources :bands do 
    get '/shows', to: 'shows#index'
    get '/shows/:show_id', to: 'shows#show'
  end
end
