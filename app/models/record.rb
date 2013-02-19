class Record < ActiveRecord::Base
  attr_accessible :created_at, :user_id, :service_id
  belongs_to :service
  belongs_to :user
end