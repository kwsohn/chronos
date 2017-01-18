class Event < ApplicationRecord
  
  validates :event_text, presence: true
  validates :time, presence: true
  
  self.per_page = 20
    
  belongs_to :user
end
