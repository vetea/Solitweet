Solitweet::Application.routes.draw do

  resources :sent_messages

  root :to => 'pages#home'
  
  resources :deputies
  resources :influencers
  resources :proposals

  match "choix/:proposal_id" => "pages#deputies", :as => :choice
  match "merci/(:proposal_id/:type/:person_id)" => "pages#thanks", :as => :thanks
  match "sense-hackers" => "pages#sense_hackers", :as => :sense_hackers
  match "a-propos" => "pages#about", :as => :about
  
  match "admin" => "pages#admin"

end
