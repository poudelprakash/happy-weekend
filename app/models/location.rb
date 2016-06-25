class Location < ActiveRecord::Base
  has_and_belongs_to_many :audiences
  belongs_to :category
  has_many :images, as: :imageable
  reverse_geocoded_by :latitude, :longitude,
  :address => :location

end
