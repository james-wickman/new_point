class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true
  attr_accessible :search_city

end
