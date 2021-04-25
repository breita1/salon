class Booking < ApplicationRecord
    
      
    belongs_to :lesson, :inverse_of => :bookings
    accepts_nested_attributes_for :lesson
  
    belongs_to :schedule, :inverse_of => :bookings
    accepts_nested_attributes_for :schedule
    
    belongs_to :user, :inverse_of => :bookings
    accepts_nested_attributes_for :use

  
    validates :schedule_id, presence: true
end
