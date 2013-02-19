class Service < ActiveRecord::Base
  attr_accessible :description, :name, :value, :record_id
end
