Rails.application.routes.draw do

  root 'main#index'

  get '/room2' => 'main#room2'
  get'/look_room2' => 'main#look_room2'
  get'/dig_room2' => 'main#dig_room2'
  get'/diglook_room2' => 'main#diglook_room2'
  get'/swim_room2' => 'main#swim_room2'
  get'/swimsword_room2' => 'main#swimsword_room2'

  get '/room3' => 'main#room3'
  get '/look_room3' => 'main#look_room3'
  get '/attack_room3' => 'main#attack_room3'
  get '/open_chest_room3' => 'main#open_chest_room3'

  get '/room4' => 'main#room4'
  get '/look_room4' => 'main#look_room4'
  get '/answer_room4' => 'main#answer_room4'

  get '/room5' => 'main#room5'
  get '/passphrase_room5' => 'main#passphrase_room5'
  get '/look_room5' => 'main#look_room5'
  get '/attack_room5' => 'main#attack_room5'


  
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
