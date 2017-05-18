Rails.application.routes.draw do

	resources :distributers

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
