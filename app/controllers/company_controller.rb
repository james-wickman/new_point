class CompanyController < ApplicationController
  def about_us
  end

  def product
    Admin.create(email: 'none@email.com', password: '1234567890')
  end

  def distribution
  	p request.location
    @google_api_key = 'AIzaSyC58rlqs0OTTUXAQ4ymK7xp0XeOIDSvjrM'
  	@user_location =  [0, 0] #[request.location.latitude, request.location.longitude] not working on some internets

  	#distributers list should be formated [distributer name, distributer address, distributer phone, url]
    distributers = Distributer.all
    @distributers_list = []
    distributers.each do |d|
      @distributers_list.push([d.name, d.address + ' ' + d.city + ' ' + d.state + ' ' + d.zip, d.phone, d.url])
    end
  	@distributers_locations = []
  	@distributers_list.each do |dist|
  		coordinates = Geocoder.coordinates(dist[1])
  		@distributers_locations.push(coordinates)
  	end
  end

  def contact_us

  end

  def send_email
    respond_to do |format|
      p params
      send_to_email = params[:send_to_email]
      customer_email = params[:your_email]
      subject = params[:your_name] + " " + params[:your_email]
      message = params[:message] + "!"
      

      RestClient.post "https://api:key-30d821d6c11596a992688a6634ae275e"\
      "@api.mailgun.net/v3/sandbox9fb152fc72764c398de75a97eab6ac0f.mailgun.org/messages",
      :from => "Mailgun Sandbox <postmaster@sandbox9fb152fc72764c398de75a97eab6ac0f.mailgun.org>",  #  need to change too a autherized domain
      :to => "nauticalnova@hotmail.com", # change too send_to_email when done with testing and after you have set up autherized domain.  will ned to authorize recipients, ie send to emails.
      :subject => "#{subject}",
      :text => "#{message}"
      p status
      if status == 200
        format.js
      else

      end
    end
  end

end
