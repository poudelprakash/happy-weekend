class Location < ActiveRecord::Base
  belongs_to :audience
  belongs_to :category
end
