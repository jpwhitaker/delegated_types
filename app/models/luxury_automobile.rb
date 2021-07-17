class LuxuryAutomobile < ApplicationRecord
  # include vehicleable
  has_one :vehicle, as: :vehicleable, touch: true
  delegate_missing_to :vehicle

  # delegate_missing_to :automobile



  # delegate :num_wheels, to: :automobile

  # def num_wheels= number
  #   self.automobile.num_wheels = number
  #   self.save!
  # end

end
