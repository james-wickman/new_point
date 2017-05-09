class CompanyController < ApplicationController
  def about_us
  end

  def product
  end

  def distribution
  	p request.location
    @google_api_key = 'AIzaSyC58rlqs0OTTUXAQ4ymK7xp0XeOIDSvjrM'
    Geocoder.configure(
      # geocoding service request timeout, in seconds (default 3):
      timeout: 10,
    )
  	@user_location = [request.location.latitude, request.location.longitude] not working on some internets

  	#distributers list should be formated [distributer name, distributer address, distributer phone, url]
  	@distributers_list = [['ADI', '1234 e 1st ave salt lake city utah 84108', '123-456-7890', 'https://www.adi.com'], ['ADI', '1234 w 1st ave sandy utah 84070', '123-456-7890', 'https://www.adi.com'], ['ADI', '100 n 300 e american fork, utah 84003', '123-456-7890', 'https://www.adi.com']]
    
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
