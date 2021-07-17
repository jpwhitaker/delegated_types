class Vehicle < ApplicationRecord
  belongs_to :user
  delegated_type :vehicleable, types: %w[Automobile LuxuryAutomobile]
  delegate_missing_to :luxury_automobile, allow_nil: true # not sure if we want this >.<

end
