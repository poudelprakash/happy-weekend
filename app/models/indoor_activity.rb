class IndoorActivity < ActiveRecord::Base
  # has_many :categories
  has_and_belongs_to_many :audiences
  belongs_to :category
  has_many :images, as: :imageable
end
