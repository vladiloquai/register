class Record < ActiveRecord::Base
	# Attributes
  attr_accessible :user_id, :service_id

  # Associations
  belongs_to :service
  belongs_to :user

  # Validations
  validates_presence_of :user_id, :service_id, :total_amount

  # Callbacks
  before_save :set_total_amount

  # Methods
  def set_total_amount
  	self.total_amount= self.service.value	
  end
end