class Automobile < ApplicationRecord
  # include vehicleable
  has_one :vehicle, as: :vehicleable, touch: true
  delegate_missing_to :vehicle

end
