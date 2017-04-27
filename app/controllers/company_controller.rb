class CompanyController < ApplicationController
  def about_us
  end

  def product
  end

  def distribution
  	p request.location
  	@user_location = [request.location.latitude, request.location.longitude]
  	#distributers list should be formated [distributer name, distributer address, distributer phone, url]
  	@distributers_list = [['ADI', '1234 e 1st ave salt lake city utah 84108', '123-456-7890', 'https://www.adi.com'], ['ADI', '1234 w 1st ave sandy utah 84070', '123-456-7890', 'https://www.adi.com'], ['ADI', '100 n 300 e american fork, utah 84003', '123-456-7890', 'https://www.adi.com']]
  	@distributers_locations = []
  	@distributers_list.each do |dist|
  		coordinates = Geocoder.coordinates(dist[1]);
  		@distributers_locations.push(coordinates)
  	end
  end

  def contact_us
  end
end
