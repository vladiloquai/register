class Record < ActiveRecord::Base
  attr_accessible :created_at
  has_one :service
  belongs_to :user
end