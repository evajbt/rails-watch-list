# Rails.application.routes.draw do
#   get 'lists', to: 'lists#index'
#   get 'lists/new', to: 'lists#new', as: 'new_list'
#   post 'lists', to: 'lists#create'
#   get 'lists/:id', to: 'lists#show', as: 'list'
#   get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: 'new_bookmark'
#   post 'lists/:list_id/bookmarks', to: 'bookmarks#create', as: 'create_bookmark'
#   delete 'bookmarks/:id', to: 'bookmarks#destroy', as: 'bookmark'
# end

Rails.application.routes.draw do
  get 'lists', to: 'lists#index'
  get 'lists/new', to: 'lists#new', as: 'new_list'
  post 'lists', to: 'lists#create'
  delete 'lists/:id', to: 'lists#destroy', as: 'destroy_list'
  get 'lists/:id', to: 'lists#show', as: 'list'
  get 'lists/:list_id/bookmarks/new', to: 'bookmarks#new', as: 'new_bookmark'
  post 'lists/:list_id/bookmarks', to: 'bookmarks#create', as: 'create_bookmark'
  delete 'bookmarks/:id', to: 'bookmarks#destroy', as: 'bookmark'
end
