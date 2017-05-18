Rails.application.routes.draw do

	resources :distributers

	# reroutes sign up new admin to home page so there can only be one.
	get 'admins/sign_up', to: "home#index"

	post 'company/send_email'

	get 'company/about_us'

	get 'company/product'

	get 'company/distribution'

	get 'company/contact_us'

	root to: "home#index"

	devise_for :admins, controllers: {
	    sessions: 'admins/sessions'
	  }

	# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
