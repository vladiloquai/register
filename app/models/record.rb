class Record < ActiveRecord::Base
  attr_accessible :created_at, :user_id, :service_id, :total_amount
  belongs_to :service
  belongs_to :user

  def set_total_amount
  	self.total_amount= self.service.value	
  end

  before_save :set_total_amount
end