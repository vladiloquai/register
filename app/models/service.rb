class Service < ActiveRecord::Base
	# Attributes
  attr_accessible :description, :name, :value

  # Associations
  has_many :records

  # Validations
  validates_presence_of :name, :value
end
