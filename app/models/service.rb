class Service < ActiveRecord::Base
  attr_accessible :description, :name, :value
  has_many :records
end
