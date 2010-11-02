ActionController::Routing::Routes.draw do |map|
  map.resources :loanapps
  map.resources :visarequests
  map.resources :memberapps
  map.resources :rfis

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  map.connect '/', :controller => 'home', :action => 'index'
  map.root :controller => 'home'
  
  map.about '/about', :controller => 'home', :action => 'about'
  map.captain_cash '/captain_cash', :controller => 'home', :action => 'captain_cash'
  map.contact '/contact', :controller => 'home', :action => 'contact'
  map.eft '/eft', :controller => 'home', :action => 'eft'
  map.fees '/fees', :controller => 'home', :action => 'fees'
  map.hb_login '/hb_login', :controller => 'home', :action => 'hb_login'
  map.hb_faq '/hb_faq', :controller => 'home', :action => 'hb_faq'
  map.links '/links', :controller => 'home', :action => 'links'
  map.loac '/loac', :controller => 'home', :action => 'loac'
  map.membershipagreement '/membershipagreement', :controller => 'home', :action => 'membershipagreement'
  map.onlineservices '/onlineservices', :controller => 'home', :action => 'onlineservices'
  map.products_loan '/products_loan', :controller => 'home', :action => 'products_loan'
  map.products '/products', :controller => 'home', :action => 'products'
  map.products_savings '/products_savings', :controller => 'home', :action => 'products_savings'
  map.ratessavings '/ratessavings', :controller => 'home', :action => 'ratessavings'
  map.ratesloan '/ratesloan', :controller => 'home', :action => 'ratesloan'
  map.savingsproducts '/savingsproducts', :controller => 'home', :action => 'savingsproducts'
  map.secinfo '/secinfo', :controller => 'home', :action => 'secinfo'
  map.secnotification '/secnotification', :controller => 'home', :action => 'secnotification'
  map.truth '/truth', :controller => 'home', :action => 'truth'
  map.whatsnew '/whatsnew', :controller => 'home', :action => 'whatsnew'
  
  map.slc '/slc', :controller => 'calculators', :action => 'slc'
  map.slcr '/slcr', :controller => 'calculators', :action => 'slcr'
  map.sc '/sc', :controller => 'calculators', :action => 'sc'
  map.scr '/scr', :controller => 'calculators', :action => 'scr'
end
