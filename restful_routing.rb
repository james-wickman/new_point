              Prefix Verb URI Pattern                     Controller#Action
  company_send_email POST /company/send_email(.:format)   company#send_email
    company_about_us GET  /company/about_us(.:format)     company#about_us
     company_product GET  /company/product(.:format)      company#product
company_distribution GET  /company/distribution(.:format) company#distribution
  company_contact_us GET  /company/contact_us(.:format)   company#contact_us
                root GET  /                               home#index
