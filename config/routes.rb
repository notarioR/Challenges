Rails.application.routes.draw do
    get '/' => 'site#home'

    # get '/challenges/:id/votes' => 'votes#index'
    # get '/challenges/:id/votes/new' => 'votes#new'

    resources :challenges do
      resources :votes
    end

  end
