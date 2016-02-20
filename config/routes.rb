Rails.application.routes.draw do
  resources :vehicles
  resources :vehicle_models
  resources :vehicle_brands
  resources :vehicle_types
  resources :modulos
  resources :module_profiles
  get 'profiles/addmodule'

  resources :states
  resources :profiles
  
  #get 'profiles/:id/addmodule', controller: :profiles, action: :addmodule, as: :addmodule_profiles
  get 'module_profiles/:id/new', controller: :module_profiles, action: :new, as: :addmodule_profiles
    
  get 'home/index'

  resources :modulos
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'
  
    get 'home/geoget'
    get 'home/rutas'
    get 'home/prototipo1'
    get 'home/cp000'    
    get 'home/cp000_pbi'    
    get 'home/cp000_todo'     
    get 'home/cp000_inprogress'
    get 'home/cp000_done'    
    get 'home/cp000_arq'  
    get 'home/cp000_mod'  
    
    get 'home/ayuda'      

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
