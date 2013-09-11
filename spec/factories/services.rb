FactoryGirl.define do |f|

  factory :service do
    name "Servicio 1"
    value 5000
  end

  factory :invalid_service, class: :service do
  end

end