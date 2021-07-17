module Vehicleable
  extend ActiveSupport::Concern
  included do
    has_one :vehicle, as: :vehicleable, touch: true
  end
end
