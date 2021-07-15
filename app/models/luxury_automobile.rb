class LuxuryAutomobile < ApplicationRecord
  include Autoable
  delegate :num_wheels, to: :automobile

  def num_wheels= number
    self.automobile.num_wheels = number
    self.save!
  end

end
