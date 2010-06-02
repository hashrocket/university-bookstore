ActionController::Routing::Routes.draw do |map|
  map.resources :books

  map.root :controller => 'books'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
