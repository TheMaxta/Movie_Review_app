Rails.application.routes.draw do

  devise_for :users
  resources :movies do
  	  resources :reviews, except: [:index] do
  	  	  member do
		    post 'upvote'
		  end
  	  end
  	end

  root 'movies#index'

  end
