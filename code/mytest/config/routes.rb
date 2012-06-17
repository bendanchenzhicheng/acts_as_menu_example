Mytest::Application.routes.draw do
  
 resources :acts_as_menus do
   collection do
     get "home_menu"
     get "f_menu_win" 
     get "s_menu_win" 
     get "t_menu_win" 
     get "c_menu_win" 
     post "f_menu_create"
     post "s_menu_create"
     post "t_menu_create"
     post "c_menu_update"
     post "update_f_menu"
     post "update_s_menu"
     post "update_t_menu"
   end
   member do
     get "update_f_menu_win"
     get "update_s_menu_win"
     get "update_t_menu_win"
   end
 end
 match "home_menu" => "acts_as_menus#home_menu"
 match "f_menu_win" => "acts_as_menus#f_menu_win"
 match "s_menu_win" => "acts_as_menus#s_menu_win"
 match "t_menu_win" => "acts_as_menus#t_menu_win"
 match "c_menu_win" => "acts_as_menus#c_menu_win"
      

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  # root :to => "welcome#index"

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id(.:format)))'
end
