class Event < ActiveRecord::Base
  has_and_belongs_to_many :audiences
  belongs_to :category
end
