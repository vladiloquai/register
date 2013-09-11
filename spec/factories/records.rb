FactoryGirl.define do |f|

  factory :record do
  	user_id 1
  	service_id 1
  	total_amount 7000
  end

  factory :invalid_record, class: :record do
  end

end