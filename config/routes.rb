ActionController::Routing::Routes.draw do |map|
  map.devise_for :users

  map.resources :affiliate_links
  map.resources :books

  map.root :controller => 'books'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
