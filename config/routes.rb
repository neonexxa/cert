Rails.application.routes.draw do
  	devise_for :users, controllers: {sessions: 'users/sessions', registrations: 'users/registrations', passwords: 'users/passwords'}
  	root to: 'home#index'
  	devise_for :admin_users, ActiveAdmin::Devise.config
  	ActiveAdmin.routes(self)
  	resources :certificates
  	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
 	get  '/home', 								to: 'home#index'
 	get  '/boards', 							to: 'home#boards'
 	get  '/boards/:id', 						to: 'home#eachboard', 			as: 'boards_each'
 	get  '/examiners', 							to: 'home#examiners'
 	get  '/certificates-list', 					to: 'home#cert'
 	get  '/certificates-view/:certid', 			to: 'home#viewcert', 			as: 'cert_enquiry'
 	post '/certificates-view/:certid', 			to: 'home#enrolcert' 			
 	get  '/qualification', 						to: 'home#qa' 
 	get  '/professionals', 						to: 'home#cp'
 	get  '/professionals/category/:id',  		to: 'home#cpfiltercategory', 	as: 'profesional_category'
 	get  '/professionals/certificate/:certid',  to: 'home#cpfiltercertificate', as: 'profesional_certificate' 
 	get  '/professionals/user/:userid',  		to: 'home#cpfilteruser', 		as: 'profesional_user'
 	get  '/profile',  							to: 'home#profile', 			as: 'profile_user'
 	get  '/professionals/search',  				to: 'home#cp'
end
