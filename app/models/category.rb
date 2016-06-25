class Category < ActiveRecord::Base
  has_many :indoor_activities
  has_many :locations
  has_many :events
end
