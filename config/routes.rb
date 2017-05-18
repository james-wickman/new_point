Rails.application.routes.draw do

  get 'distributers/index'

  get 'distributers/new'

  get 'distributers/create'

  get 'distributers/edit'

  get 'distributers/update'

  get 'distributers/destroy'

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
