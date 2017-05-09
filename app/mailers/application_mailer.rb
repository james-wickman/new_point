class ApplicationMailer < ActionMailer::Base
  default from: '@customer_email'
  layout 'mailer'
end
