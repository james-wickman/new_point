                   Prefix Verb   URI Pattern                      Controller#Action
             distributers GET    /distributers(.:format)          distributers#index
                          POST   /distributers(.:format)          distributers#create
          new_distributer GET    /distributers/new(.:format)      distributers#new
         edit_distributer GET    /distributers/:id/edit(.:format) distributers#edit
              distributer GET    /distributers/:id(.:format)      distributers#show
                          PATCH  /distributers/:id(.:format)      distributers#update
                          PUT    /distributers/:id(.:format)      distributers#update
                          DELETE /distributers/:id(.:format)      distributers#destroy
           admins_sign_up GET    /admins/sign_up(.:format)        home#index
       company_send_email POST   /company/send_email(.:format)    company#send_email
         company_about_us GET    /company/about_us(.:format)      company#about_us
          company_product GET    /company/product(.:format)       company#product
     company_distribution GET    /company/distribution(.:format)  company#distribution
       company_contact_us GET    /company/contact_us(.:format)    company#contact_us
                     root GET    /                                home#index
        new_admin_session GET    /admins/sign_in(.:format)        admins/sessions#new
            admin_session POST   /admins/sign_in(.:format)        admins/sessions#create
    destroy_admin_session DELETE /admins/sign_out(.:format)       admins/sessions#destroy
       new_admin_password GET    /admins/password/new(.:format)   devise/passwords#new
      edit_admin_password GET    /admins/password/edit(.:format)  devise/passwords#edit
           admin_password PATCH  /admins/password(.:format)       devise/passwords#update
                          PUT    /admins/password(.:format)       devise/passwords#update
                          POST   /admins/password(.:format)       devise/passwords#create
cancel_admin_registration GET    /admins/cancel(.:format)         devise/registrations#cancel
   new_admin_registration GET    /admins/sign_up(.:format)        devise/registrations#new
  edit_admin_registration GET    /admins/edit(.:format)           devise/registrations#edit
       admin_registration PATCH  /admins(.:format)                devise/registrations#update
                          PUT    /admins(.:format)                devise/registrations#update
                          DELETE /admins(.:format)                devise/registrations#destroy
                          POST   /admins(.:format)                devise/registrations#create
