class Event < ApplicationRecord
  
  self.per_page = 20
    
  belongs_to :user
end
