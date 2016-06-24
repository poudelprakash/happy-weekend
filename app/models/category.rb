class Category < ActiveRecord::Base
  has_and_belongs_to_many :indoor_activities
  has_and_belongs_to_many :locations
  has_and_belongs_to_many :events
end
