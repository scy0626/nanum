Rails.application.routes.draw do
  devise_for :users
  
  root 'home#index'
  
  get 'withre/create'
  post 'withre/create'

  get 'withre/destroy'
  get 'withre/destroy/:id' => 'withre#destroy'

  get 'marketre/create'
  post 'marketre/create'

  get 'marketre/destroy'
  get 'marketre/destroy/:id' => 'marketre#destroy'

  get 'borrowre/create'
  post 'borrowre/create'

  get 'borrowre/destroy'
  get 'borrowre/destroy/:id' => 'borrowre#destroy'
  
  get 'communityre/create'
  post 'communityre/create'

  get 'communityre/destroy'
  get 'communityre/destroy/:id' => 'communityre#destroy'
#######################
  get 'community/index'

  get 'community/create'
  post 'community/create'

  get 'community/destroy'
  get 'community/destroy/:id' => 'community#destroy'

  get 'community/edit'
  get 'community/edit/:id' => 'community#edit'

  get 'community/new'

  get 'community/show'
  get 'community/show/:id' => 'community#show'

  get 'community/update'
  post 'community/update:id' => 'community#update'

  get 'community/search'
  
  get 'community/find'
#######################
  get 'market/index'

  get 'market/create'
  post 'market/create'

  get 'market/destroy'
  get 'market/destroy/:id' => 'market#destroy'

  get 'market/edit'
  get 'market/edit/:id' => 'market#edit'

  get 'market/new'

  get 'market/show'
  get 'market/show/:id' => 'market#show'

  get 'market/update'
  get 'market/update/:id' => 'market#update'
  
  get 'market/find'
##########################
  get 'with/index'

  get 'with/create'
  post 'with/create'

  get 'with/destroy'
  get 'with/destroy/:id' => 'with#destroy'

  get 'with/edit'
  get 'with/edit/:id' => 'with#edit'

  get 'with/new'

  get 'with/show'
  get 'with/show/:id' => 'with#show'

  get 'with/update'
  post 'with/update/:id' => 'with#update'
  
  get 'with/find'
###############################


  get 'borrow/index'

  get 'borrow/create'
  post 'borrow/create'

  get 'borrow/destroy'
  get 'borrow/destroy/:id' => 'borrow#destroy'

  get 'borrow/edit'
  get 'borrow/edit/:id' => 'borrow#edit'

  get 'borrow/new'

  get 'borrow/show'
  get 'borrow/show/:id' => 'borrow#show'

  get 'borrow/update'
  get 'borrow/update/:id' => 'borrow#update'
  
  get 'borrow/find'
  ############################3
  get 'honey/index'
  
  get 'honey/new'
  
  get 'honey/create'
  post 'honey/create'
  
  get 'honey/destroy/:id' => 'honey#destroy'
###################################  
  get 'likes/likes_toggle/:id' => "likes#likes_toggle"
  post 'likes/likes_toggle/:id' => "likes#likes_toggle"

  
##############################
  get 'home/index' => 'home#index'
  get 'home/search'
  #####################
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
